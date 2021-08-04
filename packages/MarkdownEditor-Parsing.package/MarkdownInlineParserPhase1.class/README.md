A MarkdownInlineParserPhase1 handles the creation of delimiters, references, autolinks, code spans and strings.

Instance Variables
	currentIndex:		<SmallInteger>
	delimiters:		<MarkdownLinkedList>
	inlineElements:		<MarkdownLinkedList>
	previousChar:		<ByteString>

currentIndex
	- xxxxx

delimiters
	- is a MarkdownLinkList of created delimiters

inlineElements
	- is a MarkdownLinkList of created inline elements

previousChar
	- is used to detect whether an image or a link is being parsed
