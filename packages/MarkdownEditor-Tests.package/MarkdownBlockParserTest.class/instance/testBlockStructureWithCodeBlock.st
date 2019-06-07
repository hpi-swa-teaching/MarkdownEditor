tests - blocks
testBlockStructureWithCodeBlock

	self
		assert: {MarkdownCodeBlock}
		isParsedStructureOf: '```', Character cr, '```'