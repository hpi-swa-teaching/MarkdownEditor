text interaction
surroundSelectionWith: aPrefix and: aSuffix

	| selection |
	selection := self textMorph selection.
	self pluggableTextMorph replaceSelectionWith: aPrefix, selection, aSuffix