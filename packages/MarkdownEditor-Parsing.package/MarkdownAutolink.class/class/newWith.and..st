instance creation
newWith: aSymbol and: aRawString

	^ self new 
		perform: aSymbol;
		path: aRawString;
		yourself