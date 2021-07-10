text interaction
applyLinkText

	| selection |
	selection := self textMorph textMorph selection.
	self textMorph replaceSelectionWith: '[', selection, '](link destination)'