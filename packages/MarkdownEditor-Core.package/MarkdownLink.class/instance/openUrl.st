clickable
openUrl

	^[| mime |
		url
			ifNotNil: [[mime := (Url absoluteFromFileNameOrUrlString: self url) retrieveContents]
					on: Error do: [^nil].
				mime 
					ifNotNil: [MarkdownUrlContentDisplay openWithMime: mime]]]
