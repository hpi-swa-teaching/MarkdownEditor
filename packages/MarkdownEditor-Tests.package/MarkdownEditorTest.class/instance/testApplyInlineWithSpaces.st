tests - inline styling
testApplyInlineWithSpaces

	| content prefix suffix|
	prefix := '    '.
	suffix := '  '.
	content := 'Inline Test Example'.
	editor markdownText: prefix, content, suffix.
	editor pluggableTextMorph selectAll.
	editor applyItalic.
	self assert: (prefix, '*', content, '*', suffix) asText equals: editor pluggableTextMorph text