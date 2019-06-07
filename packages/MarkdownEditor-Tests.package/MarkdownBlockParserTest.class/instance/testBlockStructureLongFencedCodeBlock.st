tests - blocks
testBlockStructureLongFencedCodeBlock

	self
		assert: {MarkdownCodeBlock}
		isParsedStructureOf: '````', Character cr, '```', Character cr, '````'