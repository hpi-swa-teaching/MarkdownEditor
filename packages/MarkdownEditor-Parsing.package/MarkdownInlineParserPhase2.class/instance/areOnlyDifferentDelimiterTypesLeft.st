helper
areOnlyDifferentDelimiterTypesLeft

	(self delimiters size <= self delimiterTypeCount)
		ifFalse: [^ false].
	self delimiters do: [:delimiter | 
		(self delimiters anySatisfy: [:anotherDelimiter | 
			(anotherDelimiter == delimiter) not and: [anotherDelimiter type = delimiter type]])
				ifTrue: [^ false]].
	^ true
