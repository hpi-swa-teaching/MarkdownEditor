tests - applyLinks
testApplyImageText

	| content |
	content := 'https://squeak.org/'.
	editor markdownText: content.
	editor textMorph selectAll.
	editor markdownMenu applyImageText.
	self assert: ('![', content, ']()') asText equals: editor textMorph text