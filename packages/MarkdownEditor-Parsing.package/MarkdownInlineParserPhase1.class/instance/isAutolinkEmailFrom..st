helpers - autolink
isAutolinkEmailFrom: aRawString

	(aRawString matchesRegex: self emailRegex)
		ifTrue: [^ true]
		ifFalse: [^ false]