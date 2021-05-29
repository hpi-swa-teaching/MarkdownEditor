testing
contains: aMarkdownBlock

	(self content includesSubstring: aMarkdownBlock content)
	ifTrue: [^ self class = aMarkdownBlock class].
	^ false