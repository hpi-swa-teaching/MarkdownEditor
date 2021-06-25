new html converter
convertToHtml: aMarkdownDocument

	^ String streamContents: [:htmlStream | 
		htmlStream nextPutAll: ('<!DOCTYPE html>', Character cr,'<html>', Character cr).
		htmlStream nextPutAll: (self convertInlineStyling).
		htmlStream nextPutAll: (aMarkdownDocument convertWith: self).
		htmlStream nextPutAll:  '</html>']