converting
convertHeading: aHeading

	| openingTag closingTag content |
	
	openingTag := '<h', aHeading level, '>'.
	closingTag := '</h', aHeading level , '>'.
	content := self convertInlines: aHeading.

	^ openingTag, content, closingTag, Character cr