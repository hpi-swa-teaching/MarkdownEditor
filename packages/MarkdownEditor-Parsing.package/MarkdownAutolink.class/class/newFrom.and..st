as yet unclassified
newFrom: aSymbol and: aRawString

	^ self new 
		perform: aSymbol;
		path: aRawString;
		yourself.