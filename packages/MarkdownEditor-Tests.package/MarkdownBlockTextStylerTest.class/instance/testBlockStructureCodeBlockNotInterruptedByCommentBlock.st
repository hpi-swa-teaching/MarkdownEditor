tests - blocks
testBlockStructureCodeBlockNotInterruptedByCommentBlock

	self
		assert: {MarkdownCodeBlock}
		isParsedStructureOf: '```', Character cr, '<!-- Not a comment -->', Character cr, '```'