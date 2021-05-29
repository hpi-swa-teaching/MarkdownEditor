styling
privateStyle: aText

	| blocks timeTotal |
	timeTotal := TimeStamp now.
	blocks := self parse: aText asString.
	aText runs: (self buildAttributeRunsFrom: blocks).
	Transcript show: 'Total time for styling: ', (TimeStamp now - timeTotal), Character cr.