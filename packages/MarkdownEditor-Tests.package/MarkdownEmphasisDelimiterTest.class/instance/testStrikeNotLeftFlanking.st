tests - state
testStrikeNotLeftFlanking

	{{$a. Character cr}. {Character space. Character cr}. {$a. $.}}
		do: [:characters | | token |
			token := MarkdownStrikeDelimiter newFor: '~~~' at: 2.
			token decideLeftFlankingForPreceding: characters first following: characters last.
			self deny: token isLeftFlanking]