as yet unclassified
testLevelOfUnorderedListItems

	 (Dictionary newFrom: 
	{'- L1' -> 1. ' - L2' -> 2. '  - L3' -> 3. '   - L4' -> 4}) keysAndValuesDo: [:string :expectedLevel | 
	 | item |
	 item := MarkdownUnorderedListItem newFrom: (MarkdownLine newFrom: string).
	 self assert: expectedLevel equals: item level]
