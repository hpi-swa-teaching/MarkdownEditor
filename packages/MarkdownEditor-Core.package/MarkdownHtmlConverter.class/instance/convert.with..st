converting
convert: aBlockList with: aStyleSettings

	| html |

	html := 
'<!DOCTYPE html>
<html>
<head>
	', (self convertStyleSettings: aStyleSettings), '
</head>
<body>', Character cr.

	aBlockList do: [:block | 
		html := html, (block convertWith: self)].
	
	html := html, '</body>', Character cr, '</html>'.
	
	^ html