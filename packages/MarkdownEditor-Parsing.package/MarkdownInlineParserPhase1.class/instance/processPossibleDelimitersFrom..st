parsing
processPossibleDelimitersFrom: aRawString

	| delimiterType paddedDelimiterRun |
	delimiterType := aRawString first.
	paddedDelimiterRun := self onePaddedDelimiterRunFrom: aRawString with: delimiterType.
	(paddedDelimiterRun matchesRegex: '\s.*\s')
		ifTrue: [^ self handle: paddedDelimiterRun isNotADelimiterFrom: aRawString].
	(self doesPunctuationRuleApplyFor: paddedDelimiterRun with: delimiterType)
		ifTrue: [self handlePunctuationRuleFrom: paddedDelimiterRun]
    		ifFalse:[	self addDelimiterFrom: paddedDelimiterRun].
      ^ aRawString copyFrom: paddedDelimiterRun size - 1 to: aRawString size
