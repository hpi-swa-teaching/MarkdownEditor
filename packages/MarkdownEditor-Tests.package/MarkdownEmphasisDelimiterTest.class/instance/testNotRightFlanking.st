tests - state
testNotRightFlanking

	{{Character cr. $a}. {Character space. Character cr}. {$!. $a}}
		do: [:characters | | token |
			token := MarkdownEmphasisDelimiter newFor: '***' at: 2.
			token decideRightFlankingForPreceding: characters first following: characters last.
			self deny: token isRightFlanking]