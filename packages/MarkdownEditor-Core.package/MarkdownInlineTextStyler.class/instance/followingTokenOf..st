parsing - tokenization
followingTokenOf: aMarkdownToken

	| token |
	token := self tokens after: aMarkdownToken ifAbsent: [^ MarkdownString new].
	^ token