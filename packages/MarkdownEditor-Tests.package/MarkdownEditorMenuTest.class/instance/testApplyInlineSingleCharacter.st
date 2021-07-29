tests - inline styling
testApplyInlineSingleCharacter

	| content prefix suffix|
	prefix := '    '.
	suffix := '  '.
	content := 'A'.
	editor markdownText: prefix, content, suffix.
	editor textMorph selectAll.
	editor markdownMenu applyInlineOnSelectionWith: '*'.
	
	self assert: (prefix, '*', content, '*', suffix) asText equals: editor textMorph text