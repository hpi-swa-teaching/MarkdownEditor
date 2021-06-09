tests - inline styling
testApplyInlineNested

	| content |
	content := 'Inline Test Example'.
	editor markdownText: content.
	editor textMorph selectAll.
	editor applyItalic.
	editor applyStrikeout.
	editor applyBold.
	self assert: ('**~~*', content, '*~~**') asText equals: editor textMorph text