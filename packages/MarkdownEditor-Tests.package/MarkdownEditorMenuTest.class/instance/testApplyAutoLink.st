tests - applyLinks
testApplyAutoLink

	| content |
	content := 'https://squeak.org/'.
	editor markdownText: content.
	editor textMorph selectAll.
	editor markdownMenu applyAutoLink.
	self assert: ('<', content, '>') asText equals: editor textMorph text