comparing
= aMarkdownInlineContainerBlock

	self == aMarkdownInlineContainerBlock
		ifTrue: [ ^ true ].
	self class = aMarkdownInlineContainerBlock class
		ifFalse: [ ^ false ].
	^ self children = aMarkdownInlineContainerBlock children