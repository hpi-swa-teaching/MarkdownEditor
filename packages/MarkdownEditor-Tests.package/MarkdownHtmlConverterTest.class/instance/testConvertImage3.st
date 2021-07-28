tests - inline
testConvertImage3

	| output expectedOutput |
	parser parse: '![<squeak@hpi.de>](./sample_image.png)', Character cr, '![`self halt.`](./sample_image.png)'.
	output :=  (htmlConverter convertToHtml: parsingState document).
	expectedOutput := self fullHtmlDocumentFrom: '<p><img src="./sample_image.png" alt="squeak@hpi.de" />
<img src="./sample_image.png" alt="self halt." /></p>'.
	
	self assert: expectedOutput equals: output