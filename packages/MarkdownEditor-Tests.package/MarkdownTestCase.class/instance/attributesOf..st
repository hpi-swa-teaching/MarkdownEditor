accessing
attributesOf: anArray

	^ anArray collect: [:attributes | attributes asSet]
