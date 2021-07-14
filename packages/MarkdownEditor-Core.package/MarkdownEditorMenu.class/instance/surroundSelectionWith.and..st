text interaction
surroundSelectionWith: aPrefix and: aSuffix

	| selection |
	selection := self pluggableTextMorph textMorph selection.
	self pluggableTextMorph replaceSelectionWith: aPrefix, selection, aSuffix