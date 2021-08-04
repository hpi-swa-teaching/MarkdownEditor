A MarkdownBlock represents a block in the document tree after parsing.

Instance Variables
	container:		<MarkdownContainerBlock>
	endPosition:		<SmallInteger>
	innerLine:		<ByteString>
	innerStartPosition:		<SmallInteger>
	open:		<Boolean>
	startPosition:		<SmallInteger>

container
	- is the container of a leaf block

endPosition
	- is the end position in the Markdown text

innerLine
	- is text that follows beginning delimiters

innerStartPosition
	- is the start position of the text without delimiters and white spaces in the Markdown text

open
	- is a boolean that indicates whether a block can contain further content

startPosition
	- is the start position in the Markdown text
