comparing
hash

	^ super hash bitXor: (self inlineElements hash bitXor: self content hash)