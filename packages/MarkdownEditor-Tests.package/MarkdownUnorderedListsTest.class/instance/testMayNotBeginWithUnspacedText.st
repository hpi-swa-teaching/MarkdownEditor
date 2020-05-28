as yet unclassified
testMayNotBeginWithUnspacedText

	 {'-hashtag'. ' -missing space'. '  -no list'}  do: [:each | 
	   | line |
	   line := MarkdownLine newFrom: each.
	   self deny: (MarkdownUnorderedList mayBeginWith: line)]