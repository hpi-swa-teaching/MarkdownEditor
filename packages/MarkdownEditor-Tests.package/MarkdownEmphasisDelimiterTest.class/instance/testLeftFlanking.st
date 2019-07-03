tests - state
testLeftFlanking

	{{$a. $a}. {Character space. $a}. {Character cr. $"}. {$!. $|}}
		do: [:characters | | token |
			token := MarkdownEmphasisDelimiter newFor: '***' at: 2.
			token decideLeftFlankingForPreceding: characters first following: characters last.
			self assert: token isLeftFlanking]