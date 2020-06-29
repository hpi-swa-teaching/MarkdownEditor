as yet unclassified
convertBlockquote: aBlockquote

	| openingTag closingTag content |
	
	openingTag := '<blockquote>'.
	closingTag := '</blockquote>'.
	content := aBlockquote croppedContent.

	^ openingTag, Character cr, content, closingTag, Character cr.