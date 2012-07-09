package org.osate.ocarina.real;

import java.util.Stack;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class REALResultsParser {
	private enum State {
		SCANNING_FOR_EXECUTION_STATEMENT,
		SCANNING_FOR_NAME, 
		READING_RESULTS
	};

	private final Pattern propertyIsFalsePattern = Pattern
			.compile("([^:]+):([0-9]+):([0-9]+) Backends: error : Property is false for instance [0-9]+ \\((.+)\\)");
	private State state = State.SCANNING_FOR_EXECUTION_STATEMENT;
	
	Stack<TheoremResult> theoremStack = new Stack<TheoremResult>();
	
	// Scan for instances where property is false.
	// Example ocarina output:
	// Backends: error : Property is false for instance 6 (cheddar.impl)
	
	// Returns a TheoremResult object when it finishes parsing a theorem block
	public TheoremResult process(String line) {
		TheoremResult retVal = null;
		String[] s;
		switch (state) {
		case SCANNING_FOR_EXECUTION_STATEMENT:
			s = line.split(" execution", 2);
			if (s.length == 2) {
				TheoremResult theorem = new TheoremResult();
				theorem.name = s[0].trim();
				theoremStack.push(theorem);				
				state = State.SCANNING_FOR_NAME;
			}
			break;
			
		case SCANNING_FOR_NAME:
			
			// Look for a requirement line
			s = line.split("requirement : ", 2);
			if(s.length == 2) {
				TheoremResult theorem = new TheoremResult();
				theorem.name = s[1].trim();
				theoremStack.push(theorem);
			} else {
				s = line.split("Evaluating theorem ", 2);
				if (s.length == 2) {					
					String theoremName = s[1].trim();
					if(!theoremName.equals(theoremStack.peek().name))
					{
						throw new RuntimeException("Error parsing REAL output");
					}
					state = State.READING_RESULTS;
				}
			}
			break;

		case READING_RESULTS:
			TheoremResult theorem = theoremStack.peek();
			
			// Check if the line contains an instance where the theorem is false
			Matcher m = propertyIsFalsePattern.matcher(line);
			while (m.find()) {
				theorem.falseInstances.add(new TheoremResult.FalseInstance(m.group(1),
						Integer.parseInt(m.group(2)), Integer.parseInt(m
								.group(3)), m.group(4)));
			}

			// Check for the end of the theorem result
			s = line.split("theorem " + theorem.name + " is: ");
			if (s.length == 2) {
				boolean result = Boolean.parseBoolean(s[1]);
				theorem.result = result;
				theoremStack.pop();

				if(theoremStack.size() == 0) {
					retVal = theorem;
				} else {
					theoremStack.peek().requirements.add(theorem);
				}
				
				state = State.SCANNING_FOR_NAME;
			} else { // Add the line to the theorem result details
				theorem.details.add(line);
			}
			break;
		}

		return retVal;
	}
	
	// Must be called to handle cases where Ocarina doesn't print out a full result text. Example: A requirement fails.
	public TheoremResult processEOF() {
		TheoremResult retVal = null;
		while(theoremStack.size() > 0) {
			TheoremResult theorem = theoremStack.pop();
			
			if(theoremStack.size() == 0) {
				retVal = theorem;
			} else {
				theoremStack.peek().requirements.add(theorem);
			}
		}
		
		return retVal;
	}
}