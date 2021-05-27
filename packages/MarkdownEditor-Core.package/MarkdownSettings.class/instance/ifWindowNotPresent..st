accessing
ifWindowNotPresent: aBlock

	^ (self window = #noWindow) ifTrue: aBlock