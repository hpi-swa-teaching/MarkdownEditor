tests
testUnkownLowecaseSymbolIsInstanceVariable

	| source parsedRanges |
	source := 'someMethodName: someArgument', Character cr, 'someInstanceVariable'.
	parsedRanges := self rangesForSource: source.
	self assert: #instVar equals: parsedRanges last type.
	self assert: 30 equals: parsedRanges last start.
	self assert: 49 equals: parsedRanges last end