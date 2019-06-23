tests - state
testLength

	{'*'->1. '**'->2. '***'->3. '****'->4. '*****'->5} do: [:case | | delimiter |
		delimiter := MarkdownEmphasisDelimiter newFor: (self readStreamOn: case key).
		self assert: case value equals: delimiter length]