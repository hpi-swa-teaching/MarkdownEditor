tests - applyLinks
testApplyLinkDestination

	| content |
	content := 'https://squeak.org/'.
	editor markdownText: content.
	editor textMorph selectAll.
	editor markdownMenu applyLinkDestination.
	self assert: ('[](', content, ')') asText equals: editor textMorph text