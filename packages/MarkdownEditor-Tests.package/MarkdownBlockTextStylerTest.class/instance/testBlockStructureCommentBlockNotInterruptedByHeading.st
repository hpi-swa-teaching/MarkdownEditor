tests - blocks
testBlockStructureCommentBlockNotInterruptedByHeading

	self
		assert: {MarkdownCommentBlock}
		isParsedStructureOf: '<!--', Character cr, '# Not a heading', Character cr, '-->'