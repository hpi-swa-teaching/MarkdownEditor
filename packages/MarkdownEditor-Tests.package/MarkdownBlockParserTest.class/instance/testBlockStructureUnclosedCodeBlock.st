tests - blocks
testBlockStructureUnclosedCodeBlock

	self
		assert: {MarkdownCodeBlock}
		isParsedStructureOf: '```', Character cr, 'Code blocks auto-close'