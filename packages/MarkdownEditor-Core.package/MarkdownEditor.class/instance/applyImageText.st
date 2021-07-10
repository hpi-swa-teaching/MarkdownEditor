text interaction
applyImageText

	| selection |
	selection := self textMorph textMorph selection.
	self textMorph replaceSelectionWith: '![image text](', selection, ')'