mocks
getMimeNamed: aName withType: aType
	
	|content|
	content := self perform: aName.
	(aType beginsWith: 'text/')
		ifTrue: [content := WideString fromByteArray: content].
		
	^MIMEDocument
		contentType: aType
		content: content