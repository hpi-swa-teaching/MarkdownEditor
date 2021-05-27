clickable
openUrl

	^[:model || mime  url|
		self url
			ifNotNil: [
				
				url := self getAbsoluteUrlFromPath: model currentFilePath.
				[mime := url retrieveContents] on: Error do: [].
				mime 
					ifNotNil: [MarkdownUrlContentDisplay openWithMime: mime]]]
