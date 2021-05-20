tests - state
testItalicBoldNotRightFlanking

	{{Character cr. $a}. {Character space. Character cr}. {$!. $a}}
		do: [:characters | | token |
			token := MarkdownItalicBoldDelimiter newFor: '***' at: 2.
			token decideRightFlankingForPreceding: characters first following: characters last.
			self deny: token isRightFlanking]