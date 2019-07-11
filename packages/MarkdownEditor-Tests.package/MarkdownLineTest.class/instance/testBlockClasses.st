tests - block conversion
testBlockClasses

	(Dictionary newFrom: {
	'# Heading'->MarkdownHeading.
	'```code'->MarkdownCodeBlock.
	'<!-- Comment'->MarkdownCommentBlock.
	'Paragraph'->MarkdownParagraph})
		keysAndValuesDo: [:string :expectedBlockClass | | line |
			line := MarkdownLine newFrom: string.
			self assert: expectedBlockClass equals: line blockClass]