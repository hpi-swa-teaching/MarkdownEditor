helper
doesPunctuationRuleApplyFor: aPaddedDelimiterRun with: aType

	(((aPaddedDelimiterRun first asString matchesRegex: '[^\s', self punctuationCharacterRegex,']') 
		and: [self punctuationCharsInclude: aPaddedDelimiterRun last])
	or: [(aPaddedDelimiterRun last asString matchesRegex: '[^\s', self punctuationCharacterRegex,']') 
		and: [self punctuationCharsInclude: aPaddedDelimiterRun first]])
		ifTrue: [^ true]
		ifFalse: [^ false]