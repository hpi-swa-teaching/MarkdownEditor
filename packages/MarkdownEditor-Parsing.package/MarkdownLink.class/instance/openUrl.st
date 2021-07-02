clickable
openUrl

	^ [:model || mime  url|
		self path
			ifNotEmpty: [
				url := self getAbsoluteUrlFromPath: model currentFilePath.
				mime := url retrieveContents.
				self halt.
				mime
					ifNotNil: [MarkdownUrlContentDisplay openWithMime: mime]]]