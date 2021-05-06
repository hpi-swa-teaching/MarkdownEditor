tests - state
testRightFlanking

	{{$a. $a}. {$a. Character space}. {$". Character cr}. {$%. $?}}
		do: [:characters | | token |
			token := MarkdownItalicBoldDelimiter newFor: '***' at: 2.
			token decideRightFlankingForPreceding: characters first following: characters last.
			self assert: token isRightFlanking]