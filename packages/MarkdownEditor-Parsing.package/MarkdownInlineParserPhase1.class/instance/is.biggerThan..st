helpers - emphasis
is: aDelimiterRun biggerThan: aRawString

	(aDelimiterRun size + 1) > (aRawString size -1)
		ifTrue: [^ true]
		ifFalse: [^ false]