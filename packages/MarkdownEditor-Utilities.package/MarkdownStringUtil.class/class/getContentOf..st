reading
getContentOf: aStream

	| contents |
	contents := aStream contentsOfEntireFile.
	contents replaceAll: Character lf with: Character cr.
	^ contents