text interaction
applyInlineOnSelectionWith: aDelimiter

	| selection |
	selection := self textMorph textMorph selection.
	selection ifEmpty: [^ nil].
	self textMorph replaceSelectionWith: aDelimiter, self textMorph textMorph selection, aDelimiter