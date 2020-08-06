converting
convert: aBlockList with: aStyleSettings

	| html blocksHtml |

	html := 
'<!DOCTYPE html>
<html>
<head>
	', (self convertStyleSettings: aStyleSettings), '
</head>
<body>', Character cr.

	blocksHtml := String streamContents: [:htmlStream | 
	  aBlockList doWithIndex: [:block :index | 
		htmlStream nextPutAll: (block convertWith: self)].
	  htmlStream contents].
	
	html := html, blocksHtml, '</body>', Character cr, '</html>'.
	
	^ html