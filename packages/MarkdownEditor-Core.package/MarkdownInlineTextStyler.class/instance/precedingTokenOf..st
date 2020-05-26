parsing - tokenization
precedingTokenOf: aMarkdownToken

	| token |
	token := self tokens before: aMarkdownToken ifAbsent: [^ MarkdownString new].
	^ token