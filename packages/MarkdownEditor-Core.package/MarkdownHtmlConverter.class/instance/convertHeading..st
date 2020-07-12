converting
convertHeading: aHeading

	| openingTag closingTag content |
	
	openingTag := '<h', aHeading level, '>'.
	closingTag := '</h', aHeading level , '>'.
	content := aHeading content copyFrom: (aHeading level + 2) to: (aHeading content size).
	content := self convertInlines: aHeading.

	^ openingTag, content, closingTag, Character cr