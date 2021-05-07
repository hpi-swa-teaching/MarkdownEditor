tests - state
testLeftFlankingItalicBold

	{{$a. $a}. {Character space. $a}. {Character cr. $"}. {$!. $|}}
		do: [:characters | | token |
			token := MarkdownItalicBoldDelimiter newFor: '***' at: 2.
			token decideLeftFlankingForPreceding: characters first following: characters last.
			self assert: token isLeftFlanking]