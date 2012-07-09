package org.osate.ocarina.handlers;

import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;

/**
 * Generic handler for launching ocarina with a generator passed in as a parameter
 * @author philip
 *
 */
public class LaunchOcarinaHandler  extends AbstractOcarinaHandler {

	public LaunchOcarinaHandler() {
		super("Running Ocarina", null, true);
	}
	
	@Override
	public Object execute(ExecutionEvent e) throws ExecutionException {
		String generator = e.getParameter("org.osate.ocarina.commands.launchocarina.generator");
		if(generator == null) {
			throw new RuntimeException("Unable to retrive generator argument");
		}
			
		this.setGenerator(generator);
		
		return super.execute(e);
	}
}