accessing
last

	(self position = 0) ifTrue: [^ Character lf].
	^ super last