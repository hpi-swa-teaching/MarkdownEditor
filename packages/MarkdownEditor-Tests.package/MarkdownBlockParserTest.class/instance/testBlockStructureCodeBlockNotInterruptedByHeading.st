tests - blocks
testBlockStructureCodeBlockNotInterruptedByHeading

	self
		assert: {MarkdownCodeBlock}
		isParsedStructureOf: '```', Character cr, '# Not a heading', Character cr, '```'