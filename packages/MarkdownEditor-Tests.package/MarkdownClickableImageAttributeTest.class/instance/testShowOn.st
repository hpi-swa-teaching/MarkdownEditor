clickable
testShowOn

	| mime |
	mime := MIMEDocument contentType: 'image/jpeg' content: self imageMock.
	self assert: ('![HPI](www.hpi.de)', (String value: 1)) asText equals: (attribute show: mime contentStream On: editor)