as yet unclassified
newFrom: aString

	^ ((self newWithOutClosingTagFrom: aString) 
		ifNil: [self newWithClosingTagFrom: aString])
		