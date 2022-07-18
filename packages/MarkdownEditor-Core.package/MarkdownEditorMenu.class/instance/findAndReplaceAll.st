text interaction
findAndReplaceAll

	| continue |
	self pluggableTextMorph setSelection: #(1. 0).
	self pluggableTextMorph findReplace. "Opens UI that requests Input"
	continue := true.
	[continue] whileTrue: [
		continue := self pluggableTextMorph handleEdit: [self textMorph editor again]]
	