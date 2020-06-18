test - extandable
testExtendableWith

	 | anUnorderedList aMarkdownLine |
	
	aMarkdownLine := MarkdownLine newFrom: '- List'.
	anUnorderedList := MarkdownUnorderedList newFrom: aMarkdownLine.
	 {'- '. '	- '. '		- '} do: [:item | 
	  | line |
	  line := MarkdownLine newFrom: item.
	  self assert: (anUnorderedList isExtendableWith: line)]
