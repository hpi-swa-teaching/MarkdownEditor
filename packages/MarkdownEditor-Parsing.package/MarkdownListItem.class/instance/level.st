styling
level

	(self container container isKindOf: self class)
		ifFalse: [^ 1]
		ifTrue: [^ self container container level + 1]