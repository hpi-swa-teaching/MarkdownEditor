parsing
privateStyle: aText

	| blocks |
	blocks := self parse: aText asString.
	aText runs: (self buildTextFrom: blocks) runs
