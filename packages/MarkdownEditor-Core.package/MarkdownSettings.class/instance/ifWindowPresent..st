accessing
ifWindowPresent: aBlock

	^ (self window = #noWindow) ifFalse: [aBlock value]