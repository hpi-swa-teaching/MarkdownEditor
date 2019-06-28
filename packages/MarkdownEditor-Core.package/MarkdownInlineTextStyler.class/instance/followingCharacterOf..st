parsing
followingCharacterOf: aMarkdownToken

	| token |
	token := self tokens after: aMarkdownToken ifAbsent: [^ Character cr].
	^ token content first