styling
privateStyle: aText

	| blocks |
	blocks := self parse: aText asString.
	aText runs: (self buildAttributeRunsFrom: blocks).
	MarkdownParserExperimental new parse: aText asString.