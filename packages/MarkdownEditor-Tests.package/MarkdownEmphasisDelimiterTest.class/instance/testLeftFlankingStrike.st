tests - state
testLeftFlankingStrike

	{{$a. $a}. {Character space. $a}. {Character cr. $"}. {$!. $|}}
		do: [:characters | | token |
<<<<<<< HEAD
			token := MarkdownStrikeDelimiter newFor: '~~' at: 2.
=======
			token := MarkdownStrikeDelimiter newFor: '~~~' at: 2.
>>>>>>> settingmenu open with first tab, label of settingsmenu changed to 'Markdown Editor - Settings'
			token decideLeftFlankingForPreceding: characters first following: characters last.
			self assert: token isLeftFlanking]