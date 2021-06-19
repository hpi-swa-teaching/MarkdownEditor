parsing
processPossibleDelimitersFrom: aRawString

	| delimiterType paddedDelimiterRun |
	delimiterType := aRawString first.
	paddedDelimiterRun := self onePaddedDelimiterRunFrom: aRawString with: delimiterType.
	(paddedDelimiterRun matchesRegex: '\s.*\s')
		 ifTrue: [self addStringFrom: (paddedDelimiterRun copyFrom: 2 to: paddedDelimiterRun size - 1).
				(paddedDelimiterRun size + 1) > (aRawString size -1)
					ifTrue: [^ '']
					ifFalse: [^ aRawString copyFrom: paddedDelimiterRun size - 1 to: aRawString size]].
    	self addDelimiterFrom: paddedDelimiterRun.
      ^ aRawString copyFrom: paddedDelimiterRun size - 1 to: aRawString size
