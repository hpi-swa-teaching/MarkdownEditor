tests
testTextPersistence
	
	| editor |
	editor := toolbuilder build: (MarkdownEditor new buildEditorWith: toolbuilder).
	editor setText: 'I like trains.'.
	editor accept.
	self assert: (editor text = 'I like trains.')
		