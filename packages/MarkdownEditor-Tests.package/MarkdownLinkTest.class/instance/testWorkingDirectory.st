tests
testWorkingDirectory

	| link  text |
	link := (MarkdownLink from: 1 to: 4) url: ''.
	self assert: link getMime url = MarkdownEditor
	self assert: (text runs first last class == PluggableTextAttribute).