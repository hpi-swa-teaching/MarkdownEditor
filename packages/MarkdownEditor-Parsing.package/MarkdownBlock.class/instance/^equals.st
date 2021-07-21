comparing
= anotherMarkdownBlock

	self == anotherMarkdownBlock
		ifTrue: [ ^ true ].
	self class = anotherMarkdownBlock class
		ifFalse: [ ^ false ].
	^ self innerLine = anotherMarkdownBlock innerLine
			and: [ 
		self endPosition = anotherMarkdownBlock endPosition
			and: [ 
		self container = anotherMarkdownBlock container
			and: [ 
		self isOpen = anotherMarkdownBlock isOpen
			and: [ 
		self innerStartPosition = anotherMarkdownBlock innerStartPosition 
			and: [ 
		self startPosition = anotherMarkdownBlock startPosition ] ] ] ] ]