A MarkdownFencedCodeBlock represents a fenced code block in the document tree after parsing.

Instance Variables
	indentation:		<SmallInteger>
	info:		<ByteString>
	openingFence:		<ByteString>

indentation
	- is the indetation of the fenced code block

info
	- is a string indicating the programming language used in the fenced code block

openingFence
	- is the opening fence of the fenced code block and consists of a sequence of at least three consecutive backtick characters or tildes
