tests
testChangeMultipleEditors

	| editor2 window2 styleSettings styleSettings2 |
	
	editor2 := MarkdownEditor new.
	window2 := toolbuilder open: editor2.
	
	(self blockStylerOf: settings for: 'Paragraph') handleSliderChangeTo: 18.
	(self blockStylerOf: settings for: 'Paragraph') fontColorPicker adjustTo: Color green.
	
	styleSettings := editor blockTextStyler styleSettings.
	styleSettings2 := editor2 blockTextStyler styleSettings.
	self assert: settings newStyleSettings equals: styleSettings.
	self assert: styleSettings equals: styleSettings2.
	
	window2 delete