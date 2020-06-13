as yet unclassified
convert: aBlockList

	| html |

	html := '<!DOCTYPE html>', Character cr, '<html>', Character cr, '<head></head>', Character cr,'<body>', Character cr.

	aBlockList do: [:block | 
		html := html, (block convertWith: self)].
	
	html := html, '</body>', Character cr, '</html>'.
	
	^ html