parsing
processOpeningURLDelimiter: nextToken
	
	"set the url and end-position of the last MarkdownInlineElement which is the MarkdownLink added in the method process:and: just before"
	| urlCloser |
	nextToken class = MarkdownOpeningURLDelimiter ifTrue: [
		urlCloser := self findCloserFor: nextToken ifFound: [:closingBracket | closingBracket].
		(urlCloser = self or: [urlCloser isNil]) ifFalse: [
				"set url"
				self inlineElements last url: (self content 
					copyFrom: nextToken startPosition + nextToken length 
					to: urlCloser endPosition - urlCloser length).
				"overwrite endPosition"
				self inlineElements last endPosition: urlCloser endPosition.
				"convert into string tokens" 
				(self tokens copyFrom: (self tokens indexOf: nextToken) 
							to: (self tokens indexOf: urlCloser))
					select: [:token | token isDelimiter]
					thenDo: [:delimiter |
						self tokens at: (self tokens indexOf: delimiter) 
								put: delimiter asStringToken]]].