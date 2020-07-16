converting
convertParagraph: aParagraph

	| html |
	
	html := '<p>'.
	html := html, (self convertInlines: aParagraph).
	html := html, '</p>', Character cr.
	
	^ self createHtml: (self convertInlines: aParagraph) with: 'p'