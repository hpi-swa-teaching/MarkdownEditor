A MarkdownInlineParserPhase1 is a method object, parsing references, autolinks, code spans and finding delimiters.

Instance Variables
	currentIndex:		<SmallInteger>
	delimiters:			<MarkdownLinkedList>
	inlineElements:	<MarkdownLinkedList>
	previousChar:		<ByteString>

currentIndex
	- current absolute index in text. Use newWith: to initialize a parser with offset.

delimiters
	- a list of all found delimiters.

inlineElements
	- a list of all current inline elements.

previousChar
	- last character necessary for differentiate image and link