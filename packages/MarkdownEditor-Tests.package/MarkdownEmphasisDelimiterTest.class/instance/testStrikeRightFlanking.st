tests - state
testStrikeRightFlanking

	{{$a. $a}. {$a. Character space}. {$". Character cr}. {$%. $?}}
		do: [:characters | | token |
			token := MarkdownStrikeDelimiter newFor: '~~~' at: 2.
			token decideRightFlankingForPreceding: characters first following: characters last.
			self assert: token isRightFlanking]