tests
testBeginsWith

	Character allByteCharacters do: [:char | 
		self assert: (MarkdownString mayBeginWith: char asString)]