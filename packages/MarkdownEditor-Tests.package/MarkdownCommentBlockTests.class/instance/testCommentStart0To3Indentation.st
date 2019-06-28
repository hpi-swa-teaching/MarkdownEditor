tests - comment
testCommentStart0To3Indentation

	(Dictionary newFrom: {'<!--'->1.' <!--'->2. '  <!--'->3. '   <!--'->4}) 
		keysAndValuesDo: [:commentLine :start |  |commentBlock |
			commentBlock := MarkdownCommentBlock newFrom: commentLine.
			self assert: start equals: commentBlock commentStart]
	