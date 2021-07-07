instance creation
newFromPadded: aString

	| type |
	type := aString second.
	^ self new
		count: (aString occurrencesOfRegex: '\',type);
		type: type;
		setOpenClosePropertyFrom: aString;
		beValid;
		yourself
		