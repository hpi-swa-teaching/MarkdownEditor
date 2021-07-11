tests - applyLinks
testApplyLinkText

	| content |
	content := 'https://squeak.org/'.
	editor markdownText: content.
	editor textMorph selectAll.
	editor markdownMenu applyLinkText.
	self assert: ('[', content, ']()') asText equals: editor textMorph text