accessing
currentStyleSettings: aStyleSettings
	currentStyleSettings := aStyleSettings.
	self newStyleSettings: aStyleSettings deepCopy.
	
	self blockStylerMorphs do: [:blockStylerMorph | blockStylerMorph adjustTo: self newStyleSettings].
	