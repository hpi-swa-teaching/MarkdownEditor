text interaction
applyImageDestination

	| selection |
	selection := self textMorph textMorph selection.
	self textMorph replaceSelectionWith: '![', selection, '](image destination)'
