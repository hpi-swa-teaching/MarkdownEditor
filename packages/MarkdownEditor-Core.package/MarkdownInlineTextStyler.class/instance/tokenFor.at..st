parsing
tokenFor: aCharacter at: position

	| tokenClass |
	tokenClass := self tokenClasses detect: [:class | class mayBeginWith: aCharacter].
	^ tokenClass newFor: aCharacter asString at: position