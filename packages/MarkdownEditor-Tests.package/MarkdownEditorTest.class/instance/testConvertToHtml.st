tests - window
testConvertToHtml

	| expectedHtml exportView |
	editor textStyler privateStyle: 'Hello World' asText.
	editor convertToHTML.
	exportView := World submorphs detect: [:morph | morph isKindOf: MarkdownHtmlExportView]. 
	
	expectedHtml := '<!DOCTYPE html>
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
			font-size: 12px;
			color: rgba(0, 0, 0, 1.0); 
		}

		blockquote {
			font-size: 10px;
			color: rgba(0, 0, 255, 1.0); 
		}

		code {
			font-size: 12px;
		}

		ol {
			font-size: 14px;
			color: rgba(0, 0, 0, 1.0); 
		}

		ol ol {
			font-size: 12px;
			color: rgba(0, 0, 0, 1.0); 
		}

		ol ol ol {
			font-size: 10px;
			color: rgba(0, 0, 0, 1.0); 
		}

		ul {
			font-size: 14px;
			color: rgba(0, 0, 0, 1.0); 
		}

		ul ul {
			font-size: 12px;
			color: rgba(0, 0, 0, 1.0); 
		}

		ul ul ul {
			font-size: 10px;
			color: rgba(0, 0, 0, 1.0); 
		}
</style>
</head>
<body>
<p>Hello World</p>
</body>
</html>'.
	
	self assert: expectedHtml equals: (exportView submorphs first text string) .
	exportView delete