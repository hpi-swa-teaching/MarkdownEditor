as yet unclassified
testMayBeginWithCorrectIndentationWithText

	 {'- L1'. ' - L2'. '  - L3'} do: [:item | 
	   | line |
	   line := MarkdownLine newFrom: item.
	   self assert: (MarkdownUnorderedList mayBeginWith: line)]