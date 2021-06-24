helpers - autolink
notIncludesAutolinkOpeners: aPossibleLinkRange
	
	aPossibleLinkRange start = 1
		ifTrue: [^ true]
		ifFalse: [^ false]