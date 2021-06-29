styling
completeTextElementFrom: aText

	
	| prefixText |
	prefixText := ''.
	self level timesRepeat: [prefixText := prefixText, '#'].
	aText ifEmpty: [^ prefixText asText].
	^ (prefixText, ' ') asText, aText