contentLoading
loadText

	(self mime content beginsWith: 'error occured retrieving ')
		ifTrue: [^TextMorph string: self invalidSourceMessage size: self fontSize * 2].
	^TextMorph string: self mime bodyTextFormatted size: self fontSize