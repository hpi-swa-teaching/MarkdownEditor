as yet unclassified
testConvertBlockList

	| blocks html expectedHtml |

	blocks := OrderedCollection new.

	blocks add: (self createBlockFrom: '# Some Heading', Character cr).
	blocks add: (self createBlockFrom: '<!-- My Comment -->', Character cr).
	blocks add: (self createBlockFrom: 'My Paragraph').

	html := htmlConverter convert: blocks.
	expectedHtml := '<!DOCTYPE html>
<html>
<head></head>
<body>
<h1>Some Heading
</h1>
<!-- My Comment -->
<p>My Paragraph</p>
</body>
</html>'.

	self assert: (expectedHtml = html)