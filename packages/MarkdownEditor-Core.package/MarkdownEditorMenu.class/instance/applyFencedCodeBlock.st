text interaction
applyFencedCodeBlock

	| selection |
	selection := self pluggableTextMorph textMorph selection.
	self pluggableTextMorph replaceSelectionWith: '```', Character cr, selection, Character cr, '```'