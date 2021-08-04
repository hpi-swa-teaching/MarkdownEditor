helpers
isEmpty

	self content = ''
		ifTrue: [^ true]
		ifFalse: [^ false]