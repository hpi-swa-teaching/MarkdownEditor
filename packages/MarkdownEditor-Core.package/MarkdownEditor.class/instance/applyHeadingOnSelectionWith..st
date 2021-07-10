text interaction
applyHeadingOnSelectionWith: aLevel

	| selection matcher prefix suffix content |
	selection := self textMorph textMorph selection.
	matcher := RxMatcher forString: '(#*)(\s*)(\S.*\S|\S)(\s*)'.
	(matcher matches: selection) ifFalse: [^ nil].
	
 	content := matcher subexpression: 4.
	suffix := matcher subexpression: 5.
	prefix := ''.
	aLevel timesRepeat: [prefix := prefix, '#'].
	self textMorph replaceSelectionWith: prefix, Character space, content, Character cr