tests
testTextPersistence

	| editor |
	editor := toolbuilder build: (MarkdownEditor new buildEditorWith: toolbuilder).
	editor
		replaceSelectionWith: 'I like trains.';
		accept.
	self assert: (editor text = 'I like trains.')
