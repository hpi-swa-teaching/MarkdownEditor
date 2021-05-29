tests - recognition
testMayNotBeginWithOtherCharacter

	{$-. $!. $]. $f. Character space} do: [:character |
		self deny: (MarkdownOpeningSimpleLinkDelimiter mayBeginWith: character)].
	
	{$-. $!. $[. $f. Character space} do: [:character |
		self deny: (MarkdownClosingSimpleLinkDelimiter mayBeginWith: character)]