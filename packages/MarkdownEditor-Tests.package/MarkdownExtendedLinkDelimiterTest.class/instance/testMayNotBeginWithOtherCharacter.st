tests - recognition
testMayNotBeginWithOtherCharacter

	{$-. $!. $]. $f. Character space} do: [:character |
		self deny: (MarkdownOpeningExtendedLinkDelimiter mayBeginWith: character)].
	
	{$-. $!. $[. $f. Character space} do: [:character |
		self deny: (MarkdownClosingExtendedLinkDelimiter mayBeginWith: character)]