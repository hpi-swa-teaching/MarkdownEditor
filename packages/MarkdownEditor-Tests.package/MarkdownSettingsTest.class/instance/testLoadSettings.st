tests
testLoadSettings

	| styleSettings |
	
	styleSettings := editor blockTextStyler styleSettings.
	self assert: styleSettings = settings currentStyleSettings