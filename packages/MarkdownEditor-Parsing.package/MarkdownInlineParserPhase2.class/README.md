A MarkdownInlineParserPhase2 is a method object, evaluating delimiters and parsing emphasises.

Instance Variables
	currentCloser:		<MarkdownDelimiter>
	currentOpener:	<MarkdownDelimiter>
	delimiters:			<MarkdownLinkedList>
	inlineElements:	<MarkdownLinkedList>

currentCloser
	- possible current closer of a possible emphasis

currentOpener
	- possible current opener of a possible emphasis

delimiters
	- found list of delimiters

inlineElements
	- list of all inline elements