tests - applyLinks
testApplyImageDestination

	| content |
	content := 'https://squeak.org/'.
	editor markdownText: content.
	editor textMorph selectAll.
	editor markdownMenu applyImageDestination.
	self assert: ('![](', content, ')') asText equals: editor textMorph text