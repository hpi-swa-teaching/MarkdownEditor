tests - comment
testCommentStart0To3Indentation

	(Dictionary newFrom: {'<!--'->1.' <!--'->2. '  <!--'->3. '   <!--'->4}) 
		keysAndValuesDo: [:openingString :start | | commentBlock line |
			line := MarkdownLine newFrom: openingString.
			commentBlock := MarkdownCommentBlock newFrom: line.
			self assert: start equals: commentBlock commentStart]
	