tests - blocks
testBlockStructureEmptyCodeBlock

	self
		assert: {MarkdownCodeBlock}
		isParsedStructureOf: '```', Character cr, '```'