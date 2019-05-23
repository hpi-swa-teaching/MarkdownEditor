tests - recognition
testDoesNotBeginWithOtherCharacter

	{'-'. '!'. '!['. '['. 'f'. ''. ' '} do: [:string |
		self deny: (MarkdownEmphasisDelimiter mayBeginWith: string)]