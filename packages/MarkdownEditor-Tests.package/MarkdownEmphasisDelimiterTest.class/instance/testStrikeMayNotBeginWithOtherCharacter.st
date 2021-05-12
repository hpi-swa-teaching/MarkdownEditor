tests - recognition
testStrikeMayNotBeginWithOtherCharacter

	{$-. $!. $[. $f. Character space} do: [:character |
		self deny: (MarkdownStrikeDelimiter mayBeginWith: character)]