add to inline elements
addImageFrom: aString

	| matcher image parserForImageChildren |
	self previousChar: aString last.
	matcher := RxMatcher forString: '\[(.*)\]\((.*)\)'.
	(matcher matches: aString)
		ifTrue: [image := MarkdownImage new
				path: (matcher subexpressions: 3) first;
				yourself.
				parserForImageChildren := MarkdownInlineParser new.
				image children addAll: (parserForImageChildren parse:  (matcher subexpressions: 2) first).
				self inlineElements add: image]