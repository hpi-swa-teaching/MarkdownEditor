accessing
ifWindowNotPresent: aBlock

	(self window hasProperty: #noWindow) ifTrue: [aBlock value]