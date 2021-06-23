helper
isAutolinkEmailFrom: aRawString

	(aRawString matchesRegex: '\S+@\S+')
		ifTrue: [^ true]
		ifFalse: [^ false]