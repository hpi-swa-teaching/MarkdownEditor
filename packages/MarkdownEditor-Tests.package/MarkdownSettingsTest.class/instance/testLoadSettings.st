tests
testLoadSettings

	| styleSettings |
	
	styleSettings := editor blockTextStyler styleSettings.
	self assert: styleSettings equals: settings currentStyleSettings
		
	
