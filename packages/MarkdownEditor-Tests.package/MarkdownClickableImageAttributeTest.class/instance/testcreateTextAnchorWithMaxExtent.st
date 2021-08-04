clickable
testcreateTextAnchorWithMaxExtent

	| mime |
	mime := MIMEDocument contentType: 'image/jpeg' content: self imageMock.
	self assert: TextAnchor equals: (attribute createTextAnchorWith: mime contentStream maxExtent: 10 asPoint) class