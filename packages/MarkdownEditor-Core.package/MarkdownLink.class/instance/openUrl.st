clickable
openUrl

	^[:model || mime |
		url
			ifNotNil: [
				[mime := self getMimeFrom: model] on: Error do: [^nil].
				mime 
					ifNotNil: [MarkdownUrlContentDisplay openWithMime: mime]]]
