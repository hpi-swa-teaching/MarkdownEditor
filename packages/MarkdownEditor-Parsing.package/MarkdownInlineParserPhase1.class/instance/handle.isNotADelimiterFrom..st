parsing
handle: aDelimiterRun isNotADelimiterFrom: aRawString

	self addStringFrom: 
		(aDelimiterRun 
			copyFrom: 2 
			to: aDelimiterRun size - 1).
	
	(aDelimiterRun size + 1) > (aRawString size -1)
		ifTrue: [^ '']
		ifFalse: [^ aRawString 
					copyFrom: aDelimiterRun size - 1 
					to: aRawString size]