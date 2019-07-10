tests
testUnkownUppercaseKeywordIsGlobalVariable

	| source parsedRanges |
	source := 'someMethodName: someArgument', Character cr, 'SomeGlobalVariable'.
	parsedRanges := self rangesForSource: source.
	self assert: #globalVar equals: parsedRanges last type.
	self assert: 30 equals: parsedRanges last start.
	self assert: 47 equals: parsedRanges last end