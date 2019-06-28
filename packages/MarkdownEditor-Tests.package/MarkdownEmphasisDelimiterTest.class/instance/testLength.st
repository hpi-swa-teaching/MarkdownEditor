tests - state
testLength

	(Dictionary newFrom: {'*'->1. '**'->2. '***'->3. '****'->4. '*****'->5})
		keysAndValuesDo: [:string :expectedLength | | token |
			token := MarkdownEmphasisDelimiter newFor: string at: 1.
			self assert: expectedLength equals: token length]