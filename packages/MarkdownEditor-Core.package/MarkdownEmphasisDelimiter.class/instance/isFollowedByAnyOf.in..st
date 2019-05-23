testing-private
isFollowedByAnyOf: aCollectionOfCharacters in: aMarkdownReadStream

	| followingChar |
	followingChar := (aMarkdownReadStream peek: self length + 1) last asCharacter.
	^ aCollectionOfCharacters includes: followingChar