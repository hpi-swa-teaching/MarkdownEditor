comparing
= aMarkdownCodeSpan
	"Answer whether the receiver and anObject represent the same object."

	self == aMarkdownCodeSpan
		ifTrue: [ ^ true ].
	self class = aMarkdownCodeSpan class
		ifFalse: [ ^ false ].
	^ self content = aMarkdownCodeSpan content
		and: [ self fenceLength = aMarkdownCodeSpan fenceLength and: [ self rawContent = aMarkdownCodeSpan rawContent ] ]