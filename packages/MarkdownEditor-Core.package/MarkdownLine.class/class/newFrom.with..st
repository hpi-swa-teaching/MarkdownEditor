instance creation
newFrom: aString with: aStyleSetting

	^ self new 
		content: aString;
		styleSettings: aStyleSetting;
		yourself