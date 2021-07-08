helper
attributesOf: anArray

	^ anArray collect: [:attributes | attributes asSet]