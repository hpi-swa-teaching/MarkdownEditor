text interaction
applyBlockquote

	| selection |
	selection := self textMorph textMorph selection.
	self textMorph replaceSelectionWith: '>', selection
