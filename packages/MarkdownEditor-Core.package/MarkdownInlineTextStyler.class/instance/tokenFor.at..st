parsing - tokenization
tokenFor: aCharacter at: position

	| matchingTokenClass |
	matchingTokenClass := {MarkdownEmphasisDelimiter}
		detect: [:tokenClass | tokenClass mayBeginWith: aCharacter]
		ifNone: [MarkdownString].
	^ matchingTokenClass newFor: aCharacter asString at: position