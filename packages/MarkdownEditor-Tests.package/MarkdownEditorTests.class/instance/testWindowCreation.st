tests
testWindowCreation

	self closeMarkdownEditorWindows.
	MarkdownEditor open.
	self
		assert: self markdownWindows size
		equals: 1
		description: 'The markdown editor should open in a window.';
		closeMarkdownEditorWindows
