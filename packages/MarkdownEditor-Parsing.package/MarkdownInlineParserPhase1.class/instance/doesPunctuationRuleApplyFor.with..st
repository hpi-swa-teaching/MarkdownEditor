helpers - emphasis
doesPunctuationRuleApplyFor: aPaddedDelimiterRun with: aType

	(((aPaddedDelimiterRun first asString matchesRegex: self noPunctuationOrWhiteSpaceRegex) 
		and: [self punctuationCharsInclude: aPaddedDelimiterRun last])
	or: [(aPaddedDelimiterRun last asString matchesRegex: self noPunctuationOrWhiteSpaceRegex) 
		and: [self punctuationCharsInclude: aPaddedDelimiterRun first]])
			ifTrue: [^ true]
			ifFalse: [^ false]