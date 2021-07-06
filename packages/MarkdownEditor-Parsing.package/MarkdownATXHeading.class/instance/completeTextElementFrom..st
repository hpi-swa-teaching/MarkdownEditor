styling
completeTextElementFrom: aText

	| prefixText |
	"self halt."
	prefixText := ''.
	self level timesRepeat: [prefixText := prefixText, '#'].
	aText ifEmpty: [(self endPosition - self startPosition + 1) = 1
						ifTrue: [^ prefixText asText]
						ifFalse: [^ (prefixText, ' ') asText]].
	^ (prefixText, ' ') asText, aText