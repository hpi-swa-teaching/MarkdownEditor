tests - inline styling
testFencedCodeBlock

	| content |
	content := 'first line', Character cr, 'second line'.
	editor pluggableTextMorph changeText: content asText.
	editor pluggableTextMorph selectAll.
	editor markdownMenu applyFencedCodeBlock.
	self assert: ('```', Character cr, content, Character cr, '```') asText equals: editor pluggableTextMorph text