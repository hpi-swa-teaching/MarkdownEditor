comparing
hash

	^ super hash bitXor: (self inlines hash bitXor: self content hash)