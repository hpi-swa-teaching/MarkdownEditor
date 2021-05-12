tests - state
testLeftFlankingStrike

	{{$a. $a}. {Character space. $a}. {Character cr. $"}. {$!. $|}}
		do: [:characters | | token |
			token := MarkdownStrikeDelimiter newFor: '~~~' at: 2.
			token decideLeftFlankingForPreceding: characters first following: characters last.
			self assert: token isLeftFlanking]