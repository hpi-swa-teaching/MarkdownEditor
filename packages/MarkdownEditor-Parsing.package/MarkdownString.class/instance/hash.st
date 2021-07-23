comparing
hash

	^ super hash 
		bitXor: 
			self content hash