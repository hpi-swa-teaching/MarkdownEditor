text interaction
findAndReplaceAll

	| continue |
	self textMorph setSelection: #(1. 0).
	self textMorph findReplace.
	continue := true.
	[continue] whileTrue: [
		continue := self textMorph handleEdit: [self textMorph textMorph editor again]]
	