tests - recognition
testMayNotBeginWithOtherCharacter

	{$-. $!. $[. $f. Character space} do: [:character |
		self deny: (MarkdownEmphasisDelimiter mayBeginWith: character)]