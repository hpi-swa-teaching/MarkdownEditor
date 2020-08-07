converting
convertParagraph: aParagraph

	^ '<p>', (self convertInlines: aParagraph), '</p>', Character cr