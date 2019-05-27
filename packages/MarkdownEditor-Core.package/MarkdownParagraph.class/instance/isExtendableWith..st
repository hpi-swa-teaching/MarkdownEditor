testing
isExtendableWith: aString

	self lastLine withBlanksTrimmed isEmpty
		ifTrue: [^ aString withBlanksTrimmed isEmpty]
		ifFalse: [^ true]