tests - inline styling
testApplyHeading

	| content prefix suffix|
	prefix := '    '.
	suffix := '  '.
	content := 'This is a heading'.
	editor markdownText: prefix, content, suffix.
	editor pluggableTextMorph selectAll.
	editor markdownMenu applyHeadingAt: 1.
	
	self assert: ('# ', content, Character cr) asText equals: editor textMorph text