tests - inline styling
testApplyInlineEmptyCharacter

	| content prefix suffix|
	prefix := '    '.
	suffix := '  '.
	content := ''.
	editor markdownText: prefix, content, suffix.
	editor textMorph selectAll.
	editor markdownMenu applyInlineOnSelectionWith: '*'.
	
	self assert: (prefix, content, suffix) asText equals: editor textMorph text