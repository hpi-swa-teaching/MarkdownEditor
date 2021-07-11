text interaction
applyLinkDestination

	| selection |
	selection := self pluggableTextMorph textMorph selection.
	self pluggableTextMorph replaceSelectionWith: '[](', selection, ')'
