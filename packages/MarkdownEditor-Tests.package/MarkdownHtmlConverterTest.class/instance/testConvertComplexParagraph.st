tests
testConvertComplexParagraph

	| paragraph html expectedResult |
	
	paragraph := self createBlockFrom: ('nothing *italic* **bold** **bold*bold-and-italic***', Character cr).
	paragraph append: (MarkdownLine newFrom: '*italic**italic-and-bold***').
	html := htmlConverter convertParagraph: paragraph.
	
	expectedResult := 
'<p>
	nothing <em>italic</em> <strong>bold</strong> <strong>bold<em>bold-and-italic</em></strong>
	<em>italic<strong>italic-and-bold</strong></em>
</p>
'.
	
	self assert: (expectedResult = html).