as yet unclassified
hash

	^ ((self startPosition hash bitXor: self endPosition hash)
		bitXor: self textAttribute hash)
		bitXor: self colorAttribute hash