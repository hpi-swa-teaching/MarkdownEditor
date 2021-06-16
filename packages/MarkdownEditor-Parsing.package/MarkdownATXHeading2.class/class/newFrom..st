instance creation
newFrom: aString

	^ ((self newWithOutClosingTagFrom: aString) 
		ifNil: [self newWithClosingTagFrom: aString])
		