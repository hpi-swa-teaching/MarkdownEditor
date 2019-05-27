parsing
nextTokenIn: aMarkdownReadStream

	| tokenClass |
	tokenClass := self tokenClasses detect: [:aTokenClass | 
		aTokenClass mayBeginWith: aMarkdownReadStream peek asString].
	^ tokenClass newFor: aMarkdownReadStream