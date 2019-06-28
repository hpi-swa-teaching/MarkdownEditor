parsing
precedingCharacterOf: aMarkdownToken

	| token |
	token := self tokens before: aMarkdownToken ifAbsent: [^ Character cr].
	^ token content last