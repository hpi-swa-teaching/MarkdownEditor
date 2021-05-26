tests - window
testMenuOpenCommand

	TheWorldMenu unregisterOpenCommand: 'Markdown Editor'.
	MarkdownEditor initialize.
	self assert: (TheWorldMenu registeredOpenCommands
					includes: {'Markdown Editor'. {MarkdownEditor. #open}})