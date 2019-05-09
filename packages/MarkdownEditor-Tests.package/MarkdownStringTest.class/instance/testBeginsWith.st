tests
testBeginsWith

	Character allByteCharacters do: [:char | 
		self assert: (MarkdownString beginsWith: char asString)]