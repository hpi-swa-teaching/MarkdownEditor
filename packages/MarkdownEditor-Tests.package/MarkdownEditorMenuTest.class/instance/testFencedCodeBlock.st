tests - inline styling
testFencedCodeBlock

	| content |
	content := 'first line', Character cr, 'second line'.
	editor textMorph changeText: content asText.
	editor textMorph selectAll.
	editor markdownMenu applyFencedCodeBlock.
	self assert: ('```', Character cr, content, Character cr, '```') asText equals: editor textMorph text