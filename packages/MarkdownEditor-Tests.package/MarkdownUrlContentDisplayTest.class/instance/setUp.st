running
setUp
	
	| mime |
	mime := MIMEDocument contentType: 'image/jpeg' content: self imageMock.
	window := MarkdownUrlContentDisplay openWithMime: mime