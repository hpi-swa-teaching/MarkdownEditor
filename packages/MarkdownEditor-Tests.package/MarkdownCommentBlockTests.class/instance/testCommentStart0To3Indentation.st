tests - comment
testCommentStart0To3Indentation

	(Dictionary newFrom: {'<!--'->1.' <!--'->2. '  <!--'->3. '   <!--'->4}) keysAndValuesDo: [:commentLine :start |
		self assert: start equals: (MarkdownCommentBlock newFrom: commentLine) commentStart]
	