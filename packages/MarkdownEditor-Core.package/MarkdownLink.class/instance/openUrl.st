clickable
openUrl

	^ [:model || mime  url|
		self url
			ifNotNil: [
				url := self getAbsoluteUrlFromPath: model currentFilePath.
				mime := url retrieveContents.
				mime
					ifNotNil: [MarkdownUrlContentDisplay openWithMime: mime]]]
