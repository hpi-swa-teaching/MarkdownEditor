tests - applyLinks
testApplyImageDestination

	| content |
	content := 'https://squeak.org/'.
	editor markdownText: content.
	editor pluggableTextMorph selectAll.
	editor markdownMenu surroundSelectionWith: '![](' and: ')'.
	self assert: ('![](', content, ')') asText equals: editor textMorph text