as yet unclassified
convertParagraph: aParagraph

	| html |
	
	html := '<p>'.
	html := html, (self convertInlines: aParagraph asText).
	html := html, '</p>', Character cr.
	
	^ html.
