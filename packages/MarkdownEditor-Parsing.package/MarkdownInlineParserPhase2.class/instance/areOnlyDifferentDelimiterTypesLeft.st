helper
areOnlyDifferentDelimiterTypesLeft

	self delimiters size <= self delimiterTypeCount
		ifFalse: [^ false].
	self delimiters
		detect: [:delimiter | self delimiters
				anySatisfy: [:anotherDelimiter | (anotherDelimiter == delimiter) not
						and: [anotherDelimiter type = delimiter type]]]
		ifNone: [^ true].
	^ false