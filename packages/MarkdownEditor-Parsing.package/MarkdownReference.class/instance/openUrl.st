as yet unclassified
openUrl

	^ [:model || mime  url|
		self path
			ifNotEmpty: [
				url := self getAbsoluteUrlFromPath: model currentFilePath.
				mime := url retrieveContents.
				mime
					ifNotNil: [MarkdownUrlContentDisplay openWithMime: mime]]]