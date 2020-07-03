testing
croppedContent

	| croppedContent |
	croppedContent := ''.
	self lines do: [ :line |
		croppedContent := croppedContent, (line content copyFrom: 2 to: (line content size))
		].

	^ croppedContent