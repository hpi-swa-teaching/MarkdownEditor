tests
testChangeMultipleEditors

	| editor2 window2 options styleSettings styleSettings2 |
	
	options := MarkdownSettings UniqueInstance.
	editor2 := MarkdownEditor new.
	window2 := toolbuilder open: editor2.
	
	(self blockStylerOf: options for: 'Paragraph') handleSliderChangeTo: 18.
	(self blockStylerOf: options for: 'Paragraph') fontColorPicker adjustTo: Color green.
	
	styleSettings := editor blockTextStyler styleSettings.
	styleSettings2 := editor2 blockTextStyler styleSettings.
	self assert: options newStyleSettings equals: styleSettings.
	self assert: styleSettings equals: styleSettings2.
	
	window2 delete
		
	
