helper
onePaddedDelimiterRunFrom: aRawString with: aDelimiterType

	| delimiterRun |
	delimiterRun := (aRawString, ' ' allRegexMatches: '\', aDelimiterType, '+.') first.
	^ self previousChar, delimiterRun