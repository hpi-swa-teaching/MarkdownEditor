as yet unclassified
convertCodeBlock: aCodeBlock

	| openingTag closingTag content |
	
	openingTag := '<code>'.
	closingTag := '</code>'.
	content := aCodeBlock codeContent.

	^ openingTag, Character cr, content, closingTag, Character cr