comparing
= anotherMarkdownBlock

	self == anotherMarkdownBlock
		ifTrue: [^ true].
	self class = anotherMarkdownBlock class
		ifFalse: [^ false].
	^ self innerLine = anotherMarkdownBlock innerLine
			and: [ 
		self isOpen = anotherMarkdownBlock isOpen
			and: [ 
		self comparePosition: anotherMarkdownBlock]]