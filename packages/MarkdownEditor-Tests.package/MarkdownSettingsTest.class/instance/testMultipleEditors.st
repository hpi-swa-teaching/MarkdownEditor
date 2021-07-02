tests
testMultipleEditors

	| editor2 window2 styleSettings styleSettings2 |
	
	editor2 := MarkdownEditor new.
	window2 := toolbuilder open: editor2.
	styleSettings := editor textStyler styleSettings.
	styleSettings2 := editor2 textStyler styleSettings.
	self assert: styleSettings equals: styleSettings2.
	
	window2 delete