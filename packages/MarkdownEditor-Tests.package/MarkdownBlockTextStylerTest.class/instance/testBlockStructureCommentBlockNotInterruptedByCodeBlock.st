tests - blocks
testBlockStructureCommentBlockNotInterruptedByCodeBlock

	self
		assert: {MarkdownCommentBlock}
		isParsedStructureOf: '<!--', Character cr, '```', Character cr, 'not code', Character cr, '```', Character cr, '-->'