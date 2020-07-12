converting
convertBlockquote: aBlockquote

	| openingTag closingTag content |
	
	openingTag := '<blockquote>'.
	closingTag := '</blockquote>'.
	content := aBlockquote croppedContent.
	content := self convertInlines: aBlockquote.

	^ openingTag, Character cr, content, closingTag, Character cr