tests - recognition
testItalicBoldMayNotBeginWithOtherCharacter

	{$-. $!. $[. $f. Character space} do: [:character |
		self deny: (MarkdownItalicBoldDelimiter mayBeginWith: character)]