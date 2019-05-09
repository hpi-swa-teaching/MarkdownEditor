parsing
nextTokenIn: aMarkdownReadStream

	| tokenClass |
	tokenClass := self tokenClasses detect: [:c | 
		c beginsWith: aMarkdownReadStream peek asString].
	^ tokenClass newFor: aMarkdownReadStream