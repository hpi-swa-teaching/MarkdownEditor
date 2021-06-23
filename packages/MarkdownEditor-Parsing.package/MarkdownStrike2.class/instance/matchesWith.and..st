accessing
matchesWith: anOpeningDelimiter and: aClosingDelimiter

	((self delimiterTypes includes: anOpeningDelimiter type)
		and: [self delimiterTypes includes: aClosingDelimiter type])
			ifFalse: [^ false].

	(anOpeningDelimiter count >= self requiredCount 
		and: [aClosingDelimiter count >= self requiredCount])
			ifTrue: [^ true]
			ifFalse: [^ false]