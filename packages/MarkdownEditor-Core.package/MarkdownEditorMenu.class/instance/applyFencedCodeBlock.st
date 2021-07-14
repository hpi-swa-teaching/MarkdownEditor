text interaction
applyFencedCodeBlock

	self surroundSelectionWith: ('```', Character cr) and: (Character cr asString, '```')