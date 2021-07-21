tests - inline styling
testApplyInline

	| content prefix suffix|
	prefix := '    '.
	suffix := '  '.
	content := 'Inline Test Example'.
	editor markdownText: prefix, content, suffix.
	editor textMorph selectAll.
	editor applyItalic.
	self assert: (prefix, '*', content, '*', suffix) asText equals: editor textMorph text