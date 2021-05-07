tests
testLoadSettings

	| options styleSettings |
	
	options := MarkdownSettings UniqueInstance.
	styleSettings := editor blockTextStyler styleSettings.
	self assert: styleSettings equals: options currentStyleSettings
		
	
