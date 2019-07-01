parsing
nextTokenIn: aMarkdownReadStream

	| tokenClass |
	tokenClass := {MarkdownEmphasisDelimiter. MarkdownString} detect: [:aTokenClass | 
		aTokenClass mayBeginWith: aMarkdownReadStream peek asString].
	^ tokenClass newFor: aMarkdownReadStream