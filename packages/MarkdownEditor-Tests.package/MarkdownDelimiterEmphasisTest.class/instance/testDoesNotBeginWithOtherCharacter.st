tests - recognition
testDoesNotBeginWithOtherCharacter

	{'-'. '!'. '!['. '['. 'f'. ''. ' '} do: [:string |
		self deny: (MarkdownDelimiterEmphasis mayBeginWith: string)]