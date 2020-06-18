styling
privateStyle: aText

	| blocks |
	"self halt."
	blocks := self parse: aText asString.
	aText runs: (self buildAttributeRunsFrom: blocks)