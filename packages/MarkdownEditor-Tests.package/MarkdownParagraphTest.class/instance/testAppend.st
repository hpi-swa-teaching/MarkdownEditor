tests
testAppend

	| paragraph |
	paragraph := MarkdownParagraph newFrom: 'Next Station is
'.
	paragraph append: 'HPI Main Station.
'.
	self assert: 'Next Station is
HPI Main Station.
' equals: paragraph content