text interaction
applyInlineOnSelectionWith: aDelimiter

	| selection matcher prefix suffix content |
	selection := self textMorph selection.
	matcher := RxMatcher forString: '(\s*)(\S.*\S|\S)(\s*)'.
	(matcher matches: selection) ifFalse: [^ nil].
	
	prefix := matcher subexpression: 2.
 	content := matcher subexpression: 3.
	suffix := matcher subexpression: 4.
	
	self pluggableTextMorph replaceSelectionWith: prefix, aDelimiter, content, aDelimiter, suffix