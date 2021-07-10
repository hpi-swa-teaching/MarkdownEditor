text interaction
applyAutoLink

	| selection |
	selection := self textMorph textMorph selection.
	self textMorph replaceSelectionWith: '<', selection, '>'
