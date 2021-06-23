helper
isAutolinkURIFrom: aRawString

	(aRawString matchesRegex: '\w[\w\d.+-]{1,31}\:\S*')
		ifTrue: [^ true]
		ifFalse: [^ false]