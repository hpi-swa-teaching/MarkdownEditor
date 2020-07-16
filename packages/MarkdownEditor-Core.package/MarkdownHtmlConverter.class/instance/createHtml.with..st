utility
createHtml: aString with: aTag

	^ (self openTag: aTag), (self indentString: aString), (self closeTag: aTag)