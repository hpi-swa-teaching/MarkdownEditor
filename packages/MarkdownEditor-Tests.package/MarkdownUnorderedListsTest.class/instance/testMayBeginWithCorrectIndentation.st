as yet unclassified
testMayBeginWithCorrectIndentation

	 {'- '. '	- '. '		- '} do: [:item | 
	  | line |
	  line := MarkdownLine newFrom: item.
	  self assert: (MarkdownUnorderedList mayBeginWith: line)]
