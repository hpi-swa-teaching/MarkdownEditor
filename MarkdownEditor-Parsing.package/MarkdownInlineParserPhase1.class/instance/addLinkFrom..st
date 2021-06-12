add to inline elements
addLinkFrom: aString

	| matcher link parserForLinkChildren|
	self previousChar: aString last.
	matcher := RxMatcher forString: '\[(.*)\]\((.*)\)'.
	(matcher matches: aString)
		ifTrue: [link := MarkdownLink2 new
				url: (matcher subexpressions: 3) first;
				yourself.
				parserForLinkChildren := MarkdownInlineParser new.
				link children addAll: (parserForLinkChildren parse:  (matcher subexpressions: 2) first).
				self inlineElements add: link]