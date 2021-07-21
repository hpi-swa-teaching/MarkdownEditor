comparing
= anotherMarkdownInlineElement
	"Answer whether the receiver and anObject represent the same object."

	"self == anotherMarkdownInlineElement
		ifTrue: [ ^ true ].
	self class = anotherMarkdownInlineElement class
		ifFalse: [ ^ false ]."
	^ self content = anotherMarkdownInlineElement content