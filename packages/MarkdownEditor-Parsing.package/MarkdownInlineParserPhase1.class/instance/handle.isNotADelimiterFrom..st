helpers - emphasis
handle: aDelimiterRun isNotADelimiterFrom: aRawString

	self addStringFrom: 
		(aDelimiterRun 
			copyFrom: 2 
			to: aDelimiterRun size - 1).
	(self is: aDelimiterRun biggerThan: aRawString)
		ifTrue: [^ '']
		ifFalse: [^ aRawString 
					copyFrom: aDelimiterRun size - 1 
					to: aRawString size]