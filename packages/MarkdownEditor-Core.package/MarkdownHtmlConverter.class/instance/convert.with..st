converting
convert: aBlockList with: aStyleSettings

	| html |

	html := 
'<head>
', (self indentString: (self convertStyleSettings: aStyleSettings)), 
'</head>
<body>', Character cr.

	aBlockList do: [:block | 
		html := html, (self indentString: (block convertWith: self))].
	
	^
'<!DOCTYPE html>
<html>
', (self indentString: (html, '</body>', Character cr)),
'</html>'
	
	