test - begin
testMayBeginWithWrongIndentation

	 {' - '. '  * '. '   + '} do: [:each | 
	   | line |
	   line := MarkdownLine newFrom: each.
	   self deny: (MarkdownUnorderedList mayBeginWith: line)]