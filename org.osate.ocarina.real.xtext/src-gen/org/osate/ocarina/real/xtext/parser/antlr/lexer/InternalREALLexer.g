
/*
* generated by Xtext
*/
lexer grammar InternalREALLexer;


@header {
package org.osate.ocarina.real.xtext.parser.antlr.lexer;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}




KEYWORD_46 : ('C'|'c')('O'|'o')('M'|'m')('P'|'p')('A'|'a')('R'|'r')('E'|'e')'_'('P'|'p')('R'|'r')('O'|'o')('P'|'p')('E'|'e')('R'|'r')('T'|'t')('Y'|'y')'_'('V'|'v')('A'|'a')('L'|'l')('U'|'u')('E'|'e');

KEYWORD_44 : ('G'|'g')('E'|'e')('T'|'t')'_'('P'|'p')('R'|'r')('O'|'o')('P'|'p')('E'|'e')('R'|'r')('T'|'t')('Y'|'y')'_'('V'|'v')('A'|'a')('L'|'l')('U'|'u')('E'|'e');

KEYWORD_45 : ('I'|'i')('S'|'s')'_'('S'|'s')('U'|'u')('B'|'b')('C'|'c')('O'|'o')('M'|'m')('P'|'p')('O'|'o')('N'|'n')('E'|'e')('N'|'n')('T'|'t')'_'('O'|'o')('F'|'f');

KEYWORD_43 : ('I'|'i')('S'|'s')'_'('P'|'p')('R'|'r')('O'|'o')('V'|'v')('I'|'i')('D'|'d')('E'|'e')('D'|'d')'_'('C'|'c')('L'|'l')('A'|'a')('S'|'s')('S'|'s');

KEYWORD_42 : ('I'|'i')('S'|'s')'_'('C'|'c')('O'|'o')('N'|'n')('N'|'n')('E'|'e')('C'|'c')('T'|'t')('I'|'i')('N'|'n')('G'|'g')'_'('T'|'t')('O'|'o');

KEYWORD_39 : ('I'|'i')('S'|'s')'_'('A'|'a')('C'|'c')('C'|'c')('E'|'e')('S'|'s')('S'|'s')('I'|'i')('N'|'n')('G'|'g')'_'('T'|'t')('O'|'o');

KEYWORD_40 : ('I'|'i')('S'|'s')'_'('C'|'c')('O'|'o')('N'|'n')('N'|'n')('E'|'e')('C'|'c')('T'|'t')('E'|'e')('D'|'d')'_'('T'|'t')('O'|'o');

KEYWORD_41 : ('P'|'p')('R'|'r')('O'|'o')('P'|'p')('E'|'e')('R'|'r')('T'|'t')('Y'|'y')'_'('E'|'e')('X'|'x')('I'|'i')('S'|'s')('T'|'t')('S'|'s');

KEYWORD_38 : ('I'|'i')('S'|'s')'_'('A'|'a')('C'|'c')('C'|'c')('E'|'e')('S'|'s')('S'|'s')('E'|'e')('D'|'d')'_'('B'|'b')('Y'|'y');

KEYWORD_37 : ('I'|'i')('S'|'s')'_'('C'|'c')('A'|'a')('L'|'l')('L'|'l')('E'|'e')('D'|'d')'_'('B'|'b')('Y'|'y');

KEYWORD_36 : ('I'|'i')('S'|'s')'_'('B'|'b')('O'|'o')('U'|'u')('N'|'n')('D'|'d')'_'('T'|'t')('O'|'o');

KEYWORD_34 : ('A'|'a')('L'|'l')('L'|'l')'_'('E'|'e')('Q'|'q')('U'|'u')('A'|'a')('L'|'l')('S'|'s');

KEYWORD_35 : ('I'|'i')('S'|'s')'_'('C'|'c')('A'|'a')('L'|'l')('L'|'l')('I'|'i')('N'|'n')('G'|'g');

KEYWORD_31 : ('C'|'c')('A'|'a')('R'|'r')('D'|'d')('I'|'i')('N'|'n')('A'|'a')('L'|'l');

KEYWORD_32 : ('P'|'p')('R'|'r')('O'|'o')('P'|'p')('E'|'e')('R'|'r')('T'|'t')('Y'|'y');

KEYWORD_33 : ('R'|'r')('E'|'e')('Q'|'q')('U'|'u')('I'|'i')('R'|'r')('E'|'e')('S'|'s');

KEYWORD_28 : ('P'|'p')('R'|'r')('O'|'o')('D'|'d')('U'|'u')('C'|'c')('T'|'t');

KEYWORD_29 : ('F'|'f')('O'|'o')('R'|'r')('E'|'e')('A'|'a')('C'|'c')('H'|'h');

KEYWORD_30 : ('T'|'t')('H'|'h')('E'|'e')('O'|'o')('R'|'r')('E'|'e')('M'|'m');

KEYWORD_25 : ('E'|'e')('X'|'x')('I'|'i')('S'|'s')('T'|'t')('S'|'s');

KEYWORD_26 : ('S'|'s')('Y'|'y')('S'|'s')('T'|'t')('E'|'e')('M'|'m');

KEYWORD_27 : ('R'|'r')('E'|'e')('T'|'t')('U'|'u')('R'|'r')('N'|'n');

KEYWORD_20 : ('F'|'f')('I'|'i')('R'|'r')('S'|'s')('T'|'t');

KEYWORD_21 : ('F'|'f')('L'|'l')('O'|'o')('A'|'a')('T'|'t');

KEYWORD_22 : ('Q'|'q')('U'|'u')('E'|'e')('U'|'u')('E'|'e');

KEYWORD_23 : ('C'|'c')('H'|'h')('E'|'e')('C'|'c')('K'|'k');

KEYWORD_24 : ('F'|'f')('A'|'a')('L'|'l')('S'|'s')('E'|'e');

KEYWORD_11 : ('H'|'h')('E'|'e')('A'|'a')('D'|'d');

KEYWORD_12 : ('L'|'l')('A'|'a')('S'|'s')('T'|'t');

KEYWORD_13 : ('L'|'l')('I'|'i')('S'|'s')('T'|'t');

KEYWORD_14 : ('M'|'m')('M'|'m')('A'|'a')('X'|'x');

KEYWORD_15 : ('M'|'m')('S'|'s')('U'|'u')('M'|'m');

KEYWORD_16 : ('S'|'s')('I'|'i')('Z'|'z')('E'|'e');

KEYWORD_17 : ('E'|'e')('L'|'l')('S'|'s')('E'|'e');

KEYWORD_18 : ('T'|'t')('H'|'h')('E'|'e')('N'|'n');

KEYWORD_19 : ('T'|'t')('R'|'r')('U'|'u')('E'|'e');

KEYWORD_5 : ('G'|'g')('C'|'c')('D'|'d');

KEYWORD_6 : ('L'|'l')('C'|'c')('M'|'m');

KEYWORD_7 : ('M'|'m')('A'|'a')('X'|'x');

KEYWORD_8 : ('M'|'m')('I'|'i')('N'|'n');

KEYWORD_9 : ('S'|'s')('U'|'u')('M'|'m');

KEYWORD_10 : ('E'|'e')('N'|'n')('D'|'d');

KEYWORD_2 : ('D'|'d')('O'|'o');

KEYWORD_3 : ('I'|'i')('F'|'f');

KEYWORD_4 : ('I'|'i')('N'|'n');

KEYWORD_1 : '|';



RULE_PLUS : '+';

RULE_POWER : '**';

RULE_STAR : '*';

RULE_SLASH : '/';

RULE_MINUS : '-';

RULE_AND : 'and';

RULE_NOT : 'not';

RULE_OR : 'or';

RULE_NOT_EQUAL : '<>';

RULE_LESS_EQUAL : '<=';

RULE_GREATER_EQUAL : '>=';

RULE_GREATER : '>';

RULE_LESS : '<';

RULE_EQUAL : '=';

RULE_AFFECTATION_OPERATOR : ':=';

RULE_PUNC_OPEN_BRACE : '{';

RULE_PUNC_CLOSE_BRACE : '}';

RULE_PUNC_SEMI_COLON : ';';

RULE_PUNC_OPEN_PARENTHESIS : '(';

RULE_PUNC_CLOSE_PARENTHESIS : ')';

RULE_PUNC_COMMA : ',';

RULE_ID : ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_STRING : ('"' ('\\' ('b'|'t'|'n'|'f'|'r'|'"'|'\''|'\\')|~(('\\'|'"')))* '"'|'\'' ('\\' ('b'|'t'|'n'|'f'|'r'|'"'|'\''|'\\')|~(('\\'|'\'')))* '\'');

RULE_SL_COMMENT : '--' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_NUMERIC : ('0'..'9'|'.'|'+'|'-'|'a'..'z'|'A'..'Z')+;


