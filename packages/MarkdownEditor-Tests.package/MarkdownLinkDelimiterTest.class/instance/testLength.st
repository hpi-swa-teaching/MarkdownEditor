tests - state
testLength

	(Dictionary newFrom: {'['->1. '[['->2. '[[['->3. '[[[['->4. '[[[[['->5})
		keysAndValuesDo: [:string :expectedLength | | token |
			token := MarkdownOpeningLinkDelimiter newFor: string at: 1.
			self assert: expectedLength equals: token length].
		
	(Dictionary newFrom: {']'->1. ']]'->2. ']]]'->3. ']]]]'->4. ']]]]]'->5})
		keysAndValuesDo: [:string :expectedLength | | token |
			token := MarkdownClosingLinkDelimiter newFor: string at: 1.
			self assert: expectedLength equals: token length]