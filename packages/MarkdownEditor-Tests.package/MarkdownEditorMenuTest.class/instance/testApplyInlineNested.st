tests - inline styling
testApplyInlineNested

	| content |
	content := 'Inline Test Example'.
	editor markdownText: content.
	editor textMorph selectAll.
	editor markdownMenu applyInlineOnSelectionWith: '*'.
	editor markdownMenu applyInlineOnSelectionWith: '~~'.
	editor markdownMenu applyInlineOnSelectionWith: '**'.
	self assert: ('**~~*', content, '*~~**') asText equals: editor textMorph text