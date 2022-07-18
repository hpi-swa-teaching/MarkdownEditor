contentLoading
loadText

	(self mime content beginsWith: 'error occured retrieving ')
		ifTrue: [self contentText: (TextMorph string: self invalidSourceMessage size: self fontSize * 2).
				^ self adaptTextColorToTheme: self contentText].
	self contentText: (TextMorph string: self mime bodyTextFormatted size: self fontSize).
	^ self adaptTextColorToTheme: self contentText