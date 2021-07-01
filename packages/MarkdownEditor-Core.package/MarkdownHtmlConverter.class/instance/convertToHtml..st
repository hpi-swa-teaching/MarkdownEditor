converting
convertToHtml: aMarkdownDocument

	^ String streamContents: [:htmlStream | 
		htmlStream nextPutAll: ('<!DOCTYPE html>', Character cr,'<html>', Character cr).
		htmlStream nextPutAll: (self convertHead).
		htmlStream nextPutAll: (aMarkdownDocument convertWith: self).
		htmlStream nextPutAll:  '</html>']