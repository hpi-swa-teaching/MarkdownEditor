instance creation
newFrom: aPath at: aPosition for: aText

	^ self new
		path: aPath;
		position: aPosition;
		text: aText;
		yourself