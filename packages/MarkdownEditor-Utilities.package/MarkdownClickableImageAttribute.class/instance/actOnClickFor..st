mouse events
actOnClickFor: aModel

	| mime  url|
	self path
		ifNotEmpty: [
			url := self getAbsoluteUrlFromPath: aModel currentFilePath.
			mime := url retrieveContents.
			mime
				ifNotNil: [self show: mime contentStream On: aModel]].
	^ true