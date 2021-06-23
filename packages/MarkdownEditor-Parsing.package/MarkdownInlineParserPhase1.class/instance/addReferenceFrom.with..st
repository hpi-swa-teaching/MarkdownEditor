add to inline elements
addReferenceFrom: aString with: aLinkType

	| matcher parserForLinkTypeChildren linkType |
	self previousChar: aString last.
	aLinkType = MarkdownImage 
		ifTrue: [self cleanUpForImage].
	matcher := RxMatcher forString: '\[(.*)\]\((.*)\)'.
	(matcher matches: aString)
		ifTrue: [linkType := aLinkType new
					path: (matcher subexpressions: 3) first;
					yourself.
				parserForLinkTypeChildren := MarkdownInlineParser new.
				linkType children addAll: (parserForLinkTypeChildren parse: (matcher subexpressions: 2) first).
				self inlineElements add: linkType]