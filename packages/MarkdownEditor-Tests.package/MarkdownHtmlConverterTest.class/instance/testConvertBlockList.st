as yet unclassified
testConvertBlockList

	| blocks html expectedHtml |

	blocks := OrderedCollection new.

	blocks add: (self createBlockFrom: '# Some Heading', Character cr).
	blocks add: (self createBlockFrom: '<!-- My Comment -->', Character cr).
	blocks add: (self createBlockFrom: 'My Paragraph').

	html := htmlConverter convert: blocks with: MarkdownStyleSettings default.
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
			font-size: 14px;
			color: rgba(0, 0, 0, 1.0); 
		}
	</style>
</head>
<body>
<h1>Some Heading
</h1>
<!-- My Comment -->
<p>My Paragraph</p>
</body>
</html>'.

	self assert: (expectedHtml = html)