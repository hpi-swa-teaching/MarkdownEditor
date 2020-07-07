test - open / close
testFileEnding

	| editor |
	editor := MarkdownEditor new.
	self assert: editor fileEnding equals: 'mde'