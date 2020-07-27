attribute
copyTokenFromStartTo: aLength

	^ self copy
		content: (self content first: aLength);
		yourself.