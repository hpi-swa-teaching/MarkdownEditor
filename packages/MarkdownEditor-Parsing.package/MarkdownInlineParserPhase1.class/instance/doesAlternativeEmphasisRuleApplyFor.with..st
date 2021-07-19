helpers - emphasis
doesAlternativeEmphasisRuleApplyFor: aPaddedDelimiterRun with: aDelimiterType

	aDelimiterType = $_
		ifFalse: [^ false].
	^ aPaddedDelimiterRun
		matchesRegex:
			self noPunctuationOrWhiteSpaceRegex,
			'\',
			aDelimiterType,
			'*',
			self noPunctuationOrWhiteSpaceRegex