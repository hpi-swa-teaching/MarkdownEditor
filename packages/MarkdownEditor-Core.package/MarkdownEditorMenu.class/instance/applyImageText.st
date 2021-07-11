text interaction
applyImageText

	| selection |
	selection := self pluggableTextMorph textMorph selection.
	self pluggableTextMorph replaceSelectionWith: '![', selection, ']()'