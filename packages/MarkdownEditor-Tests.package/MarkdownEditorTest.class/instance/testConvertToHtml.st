tests - window
testConvertToHtml

	| editor windows |
	editor := MarkdownEditor new.
	window delete.
	window := ToolBuilder open: editor.
	editor markdownText: 'Hallo'.
	editor convertToHTML.
	windows := (World submorphs select: [:morph | morph isKindOf: MarkdownHtmlExportView]). 
	self assert: (windows first submorphs first text) equals: '<!DOCTYPE html>
<html>
<head>
	<style>
		h1 {
			font-size: 34px;
			color: rgba(0, 0, 0, 1.0); 
		}

		h2 {
			font-size: 28px;
			color: rgba(0, 0, 0, 1.0); 
		}

		h3 {
			font-size: 22px;
			color: rgba(0, 0, 0, 1.0); 
		}

		h4 {
			font-size: 19px;
			color: rgba(0, 0, 0, 1.0); 
		}

		h5 {
			font-size: 16px;
			color: rgba(0, 0, 0, 1.0); 
		}

		h6 {
			font-size: 14px;
			color: rgba(0, 0, 0, 1.0); 
		}

		p {
			font-size: 14px;
			color: rgba(0, 0, 0, 1.0); 
		}
	</style>
</head>
<body>
<p>Hallo</p>
</body>
</html>'.
	windows first delete