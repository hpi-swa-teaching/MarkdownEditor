attribute
copyTokenToEndWithLength: aLength

	^ self copy
		content: (self content last: aLength);
		startPosition: self endPosition - aLength + 1;
		yourself.