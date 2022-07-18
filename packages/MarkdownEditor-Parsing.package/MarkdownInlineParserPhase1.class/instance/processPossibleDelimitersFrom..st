parsing
processPossibleDelimitersFrom: aRawString

	| delimiterType paddedDelimiterRun |
	delimiterType := aRawString first.
	paddedDelimiterRun := self createPaddedDelimiterRunFrom: aRawString with: delimiterType.
	(paddedDelimiterRun matchesRegex: '\s.*\s')
		ifTrue: [^ self handle: paddedDelimiterRun isNotADelimiterFrom: aRawString].
	(self doesPunctuationRuleApplyFor: paddedDelimiterRun with: delimiterType)
		ifTrue: [self handlePunctuationRuleFrom: paddedDelimiterRun]
    		ifFalse:[(self doesAlternativeEmphasisRuleApplyFor: paddedDelimiterRun with: delimiterType)
				ifTrue: [^ self processStringFrom: aRawString].
				self addDelimiterFrom: paddedDelimiterRun].
	^ aRawString allButFirst: paddedDelimiterRun size - 2