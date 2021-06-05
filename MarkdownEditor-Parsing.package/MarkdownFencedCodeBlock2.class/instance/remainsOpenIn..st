as yet unclassified
remainsOpenIn: aString

	^ (aString matchesRegex: '\s{0,3}',self openingFence, '$')