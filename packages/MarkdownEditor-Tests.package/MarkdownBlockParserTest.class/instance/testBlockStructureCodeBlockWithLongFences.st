tests - blocks
testBlockStructureCodeBlockWithLongFences

	self
		assert: {MarkdownCodeBlock}
		isParsedStructureOf: '````', Character cr, '```', Character cr, '````'