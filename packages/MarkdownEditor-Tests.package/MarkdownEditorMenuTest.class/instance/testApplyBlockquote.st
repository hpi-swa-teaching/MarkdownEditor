tests - inline styling
testApplyBlockquote

	| content prefix suffix|
	prefix := '    '.
	suffix := '  '.
	content := 'This is a blockquote'.
	editor markdownText: prefix, content, suffix.
	editor textMorph selectAll.
	editor markdownMenu applyBlockquote.
	self assert: ('>', prefix, content, suffix) asText equals: editor textMorph text