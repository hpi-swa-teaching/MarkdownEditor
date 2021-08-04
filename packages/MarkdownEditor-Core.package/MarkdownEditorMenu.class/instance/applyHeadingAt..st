text interaction
applyHeadingAt: aLevel

	| selection matcher prefix content |
	selection := self textMorph selection.
	matcher := RxMatcher forString: '(#*)(\s*)(\S.*\S|\S)(\s*)'.
	(matcher matches: selection) ifFalse: [^ nil].
 	content := matcher subexpression: 4.
	prefix := ''.
	aLevel timesRepeat: [prefix := prefix, '#'].
	self pluggableTextMorph replaceSelectionWith: prefix, Character space, content, Character cr