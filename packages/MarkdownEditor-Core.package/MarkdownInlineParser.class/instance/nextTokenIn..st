parsing
nextTokenIn: aMarkdownReadStream

	| tokenClass |
	tokenClass := self tokenClasses detect: [:c | 
		c matches: aMarkdownReadStream peek asString].
	^ tokenClass newFor: aMarkdownReadStream