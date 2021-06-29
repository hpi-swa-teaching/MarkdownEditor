instance creation
newFrom: aString
	
	|listItem|
	listItem := MarkdownListItem2 newFrom: aString.
	listItem ifNil: [^nil].
	^ self new
		isOrdered: listItem isOrdered;
		startNumber: (listItem isOrdered ifTrue: [listItem number] ifFalse: [nil]);
		listMarker: listItem listMarker;
		innerLine: listItem innerLine;
		isLoose: false;
		addItem: listItem.