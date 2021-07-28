comparing
hash

	^ super hash 
		bitXor: 
			(self isLoose hash 
		bitXor: 
			(self startNumber hash))