tests - recognition
testMayNotBeginWithOtherCharacter

	{$-. $!. $]. $f. Character space} do: [:character |
		self deny: (MarkdownOpeningLinkDelimiter mayBeginWith: character)].
	
	{$-. $!. $[. $f. Character space} do: [:character |
		self deny: (MarkdownClosingLinkDelimiter mayBeginWith: character)]