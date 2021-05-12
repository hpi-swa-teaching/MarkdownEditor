clickable
openUrl

	"ToDo: parallelisieren"
	^[| mime |
		url
			ifNotNil: [[mime := (Url absoluteFromFileNameOrUrlString: self url) retrieveContents]
					on: Error do: [].
				mime 
					ifNotNil: [MarkdownUrlContentDisplay openWithMime: mime]]]
