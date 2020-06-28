creation
newFrom: aMarkdownLine with: aStyleSettings

	^ self new 
		line: aMarkdownLine; 
		styleSettings: aStyleSettings;
		yourself