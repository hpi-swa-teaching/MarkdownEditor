tests
testMatches

	Character allByteCharacters do: [:char | 
		self assert: (MarkdownString matches: char asString)]