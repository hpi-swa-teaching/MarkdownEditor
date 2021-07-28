comparing
hash

	^ super hash 
		bitXor:
			(self indentation hash
		bitXor:
			(self listMarker hash
		bitXor: 
			(self isLoose hash 
		bitXor: 
			(self startNumber hash
		bitXor: 
			(self isOrdered hash)))))