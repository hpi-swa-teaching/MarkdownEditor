tests - recognition
testMayNotBeginWithOtherCharacter

	{$-. $!. $[. $f. Character space} do: [:character |
		self deny: (MarkdownItalicBoldDelimiter mayBeginWith: character)]