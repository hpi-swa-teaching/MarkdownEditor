instance creation
newFrom: aString with: aStyleSettings

	^ self new 
		content: aString;
		styleSettings: aStyleSettings;
		yourself