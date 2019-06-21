tests - cleaning
testIsReusable

	self 
		assert: {MarkdownParagraph} 
		isParsedStructureOf: '**MiniMetro**'.
	self
		assert: {MarkdownHeading}
		isParsedStructureOf: '# Tschuuu tschuu'
	