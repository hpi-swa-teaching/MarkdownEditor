tests - applyLinks
testApplyImageDestination

	| content |
	content := 'https://squeak.org/'.
	editor markdownText: content.
	editor textMorph selectAll.
	editor markdownMenu surroundSelectionWith: '![](' and: ')'.
	self assert: ('![](', content, ')') asText equals: editor textMorph text