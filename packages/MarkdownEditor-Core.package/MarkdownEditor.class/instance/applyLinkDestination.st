text interaction
applyLinkDestination

	| selection |
	selection := self textMorph textMorph selection.
	self textMorph replaceSelectionWith: '[link text](', selection, ')'
