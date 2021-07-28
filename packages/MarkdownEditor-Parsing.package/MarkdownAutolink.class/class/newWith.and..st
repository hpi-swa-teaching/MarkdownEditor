instance creation
newWith: aSymbol and: aRawString

	^ self new 
		perform: aSymbol;
		autolinkPath: aRawString;
		yourself