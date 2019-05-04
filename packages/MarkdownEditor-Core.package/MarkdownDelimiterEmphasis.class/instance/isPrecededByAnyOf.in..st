testing-private
isPrecededByAnyOf: aCollectionOfCharacters in: aMarkdownReadStream

	| previousChar |
	(aMarkdownReadStream position = 0) ifTrue: [^ true].
	previousChar := aMarkdownReadStream last asCharacter.
	^ aCollectionOfCharacters includes: previousChar