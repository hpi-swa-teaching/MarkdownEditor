tests - blocks
testBlockStructureTwoHeadings

	self
		assert: {'# First Heading'. '# Second Heading'}
		parsesToBlocks: {MarkdownHeading. MarkdownHeading}