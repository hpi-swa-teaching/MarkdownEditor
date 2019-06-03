tests - blocks
testBlockStructureTwoHeadings

	self
		assert: {MarkdownHeading. MarkdownHeading}
		isParsedStructureOf: '# First Heading', Character cr, '# Second Heading'