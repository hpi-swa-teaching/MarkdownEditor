tests - inline styling
testApplyInlineNested

	| content |
	content := 'Inline Test Example'.
	editor markdownText: content.
	editor pluggableTextMorph selectAll.
	editor applyItalic.
	editor applyStrikeout.
	editor applyBold.
	self assert: ('**~~*', content, '*~~**') asText equals: editor pluggableTextMorph text