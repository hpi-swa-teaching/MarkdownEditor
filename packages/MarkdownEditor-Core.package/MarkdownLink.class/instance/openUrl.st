clickable
openUrl

	^[| mime |
		url
			ifNotNil: [mime := (Url absoluteFromFileNameOrUrlString: self url) retrieveContents.
				mime 
					ifNotNil: [MarkdownUrlContentDisplay openWithMime: mime]]]
