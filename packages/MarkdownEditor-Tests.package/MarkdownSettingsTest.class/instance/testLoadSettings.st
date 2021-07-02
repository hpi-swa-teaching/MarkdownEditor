tests
testLoadSettings

	| styleSettings |
	
	styleSettings := editor textStyler styleSettings.
	self assert: styleSettings = settings currentStyleSettings