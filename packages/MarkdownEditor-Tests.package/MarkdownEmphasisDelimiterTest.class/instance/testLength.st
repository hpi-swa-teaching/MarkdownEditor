tests - state
testLength

	(Dictionary newFrom: {'*'->1. '**'->2. '***'->3. '****'->4. '*****'->5})
		keysAndValuesDo: [:string :length | | delimiter |
			delimiter := MarkdownEmphasisDelimiter newFor: (self readStreamOn: string).
			self assert: length equals: delimiter length]