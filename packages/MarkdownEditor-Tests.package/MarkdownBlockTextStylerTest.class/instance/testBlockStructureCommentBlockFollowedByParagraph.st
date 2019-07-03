tests - blocks
testBlockStructureCommentBlockFollowedByParagraph

	self
		assert: {MarkdownCommentBlock. MarkdownParagraph}
		isParsedStructureOf: '<!-- Comment about MiniMetro being amazing -->', Character cr,
			'Paragraph describing the game'