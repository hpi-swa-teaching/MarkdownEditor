accessing
peek: anInteger

	"Compatibility to Smalltalk CI."
	| oldPosition result |
	oldPosition := position.
	result := self next: anInteger.
	position := oldPosition.
	^ result