tests - block conversion
testPotentialBlockClass

	(Dictionary newFrom: {'# Heading'->MarkdownHeading.
		'```code'->MarkdownCodeBlock.
		'<!-- Comment'->MarkdownCommentBlock.
		'Paragraph'->MarkdownParagraph}) keysAndValuesDo: [:string :expectedBlockClass | | line |
			line := MarkdownLine newFrom: string.
			self assert: expectedBlockClass equals: line potentialBlockClass]
	