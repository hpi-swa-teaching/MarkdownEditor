text interaction
applyImageDestination

	| selection |
	selection := self pluggableTextMorph textMorph selection.
	self pluggableTextMorph replaceSelectionWith: '![](', selection, ')'