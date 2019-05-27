testing-private
isPrecededByAnyOf: aCollectionOfCharacters in: aMarkdownReadStream

	| previousChar |
	previousChar := aMarkdownReadStream last asCharacter.
	^ aCollectionOfCharacters includes: previousChar