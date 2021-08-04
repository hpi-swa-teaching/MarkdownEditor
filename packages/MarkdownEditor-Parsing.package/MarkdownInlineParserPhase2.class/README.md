A MarkdownInlineParserPhase2 handles the creation of emphasis.

Instance Variables
	currentCloser:		<MarkdownDelimiter>
	currentOpener:		<MarkdownDelimiter>
	delimiters:		<MarkdownLinkedList>
	inlineElements:		<MarkdownLinkedList>

currentCloser
	- could be a closing delimiter for emphasis

currentOpener
	- could be a opening delimiter for emphasis

delimiters
	- is a MarkdownLinkList of created delimiters

inlineElements
	- is a MarkdownLinkList of created inline elements
