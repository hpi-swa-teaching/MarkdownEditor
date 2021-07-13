comparing
= aMarkdownClickableAttribute

	self == aMarkdownClickableAttribute
		ifTrue: [ ^ true ].
	self class = aMarkdownClickableAttribute class
		ifFalse: [ ^ false ].
	^ self path = aMarkdownClickableAttribute path