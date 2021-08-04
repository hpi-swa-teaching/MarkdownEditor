remove
removeAllFromCollection: aCollection

	aCollection do: [:anElement | self remove: anElement ifAbsent: []]