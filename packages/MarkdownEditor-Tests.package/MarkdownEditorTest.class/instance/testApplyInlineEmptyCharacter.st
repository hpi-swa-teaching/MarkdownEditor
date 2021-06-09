tests - inline styling
testApplyInlineEmptyCharacter

	| content prefix suffix|
	prefix := '    '.
	suffix := '  '.
	content := ''.
	editor markdownText: prefix, content, suffix.
	editor textMorph selectAll.
	editor applyItalic.
	self assert: (prefix, content, suffix) asText equals: editor textMorph text