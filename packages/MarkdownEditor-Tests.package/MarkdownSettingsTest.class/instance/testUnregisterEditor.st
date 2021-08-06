tests - open close
testUnregisterEditor

	| editor2 |
	editor2 := MarkdownEditor open.
	self assert: (settings editors includes: editor2 model).
	
	settings unregister: editor2 model.
	self deny: (settings editors includes: editor2 model).
	editor2 delete