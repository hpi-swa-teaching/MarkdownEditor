as yet unclassified
openWithMime: aMimeDocument

	^ToolBuilder open: 
		(self new 
			mime: aMimeDocument;
			yourself)