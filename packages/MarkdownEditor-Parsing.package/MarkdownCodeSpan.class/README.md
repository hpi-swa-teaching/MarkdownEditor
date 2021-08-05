A MarkdownCodeSpan represents a code span in the document tree after parsing.

Instance Variables
	code:		<ByteString>
	fenceLength:		<SmallInteger>
	rawContent:		<ByteString>

code
	- is the parsed text with stripped white spaces according to spec

fenceLength
	- is the length of the fence

rawContent
	- is the text between the fences without stripping
