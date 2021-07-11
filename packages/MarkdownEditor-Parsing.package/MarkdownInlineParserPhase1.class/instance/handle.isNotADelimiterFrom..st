helpers - emphasis
handle: aDelimiterRun isNotADelimiterFrom: aRawString

	self addToInlineElements:(
		MarkdownString newFrom: 
			(aDelimiterRun 
				copyFrom: 2 
				to: aDelimiterRun size - 1)).
	(self is: aDelimiterRun biggerThan: aRawString)
		ifTrue: [^ '']
		ifFalse: [^ aRawString 
					allButFirst: aDelimiterRun size - 2]