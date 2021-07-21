helpers - reference
processImage: aBalancedBracketCollection from: aRawString

	aBalancedBracketCollection reverseDo:
		[:bracketPair | | enclosedLink |
		enclosedLink := self findEnclosedLinkFrom: aRawString and: bracketPair.
		enclosedLink
			ifNotEmpty: [(self isOpenBracketAtOneFrom: bracketPair)
				ifTrue: [ | endLinkIndex matcher anotherMatcher |
						endLinkIndex := self findCloserIndexFrom: enclosedLink and: bracketPair.
						matcher := RxMatcher forString: '\[(.*)\]\((.*)\).*'.
						anotherMatcher := RxMatcher forString: '\[(.*`.*`.*)\]\((.*)\).*'.
						((matcher matches: aRawString) and:[((matcher subexpression: 2) asString includes: $`) and: [(anotherMatcher matches: aRawString) not]])
							ifTrue: [^ self proofePossibleCodeSpanFrom: aRawString]
							ifFalse: [self addReferenceFrom: (aRawString copyFrom: bracketPair x to: endLinkIndex) with: MarkdownImage.
									^ aRawString copyFrom: endLinkIndex + 1 to: aRawString size]]
				ifFalse: [^ self processStringFrom: aRawString]]].
	^ self processStringFrom: aRawString