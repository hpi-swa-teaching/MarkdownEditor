parsing
processOpeningURLDelimiter: nextToken

	| urlCloser |

	nextToken class = MarkdownOpeningURLDelimiter
		ifTrue: [urlCloser := self findCloserFor: nextToken ifFound: [:closingBracket | closingBracket].
				(urlCloser = self or: [urlCloser isNil])
					ifFalse: [self inlineElements last url: (self content copyFrom: nextToken startPosition + nextToken length to: urlCloser endPosition - urlCloser length).
							(self tokens copyFrom: (self tokens indexOf: nextToken) to: (self tokens indexOf: urlCloser))
								select: [: token | token isDelimiter]
								thenDo: [:delimiter |
									self tokens at: (self tokens indexOf: delimiter) put: delimiter asStringToken]]].