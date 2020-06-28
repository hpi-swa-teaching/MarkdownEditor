test - begin
testMayBeginWithCorrectIndentation

	 {'- '. '	- '. '		- '} do: [:item | 
	  | line |
	  line := MarkdownLine newFrom: item.
	  self assert: (MarkdownUnorderedList mayBeginWith: line)]
