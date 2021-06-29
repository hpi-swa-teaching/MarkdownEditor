as yet unclassified
stringOfLenght: aNumber

	| str |
	str := ''.
	aNumber timesRepeat: [str := str, ' '].
	^ str