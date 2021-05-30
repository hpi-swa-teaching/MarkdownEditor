contentLoading
loadBasis

	self contentText: (TextMorph string: self unsupportedDocumentMessage size: self fontSize * 2).
	^ self adaptTextColorToTheme: self contentText