tests
testMenuOpenCommand

	self
		assert: [TheWorldMenu registeredOpenCommands
					includes: {'Markdown Editor'. {MarkdownEditor. #open}}]
		description: 'The menu should have a command to open the markdown editor.'