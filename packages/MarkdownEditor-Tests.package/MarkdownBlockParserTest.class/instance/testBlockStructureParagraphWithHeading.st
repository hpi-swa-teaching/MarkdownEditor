tests - blocks
testBlockStructureParagraphWithHeading

	blockParser parse: 'Paragraph
# Title'.
	
	self assert: 2 equals: blockParser blocks size.
	self assert: (blockParser blocks first isKindOf: MarkdownParagraph).
	self assert: (blockParser blocks second isKindOf: MarkdownHeading)