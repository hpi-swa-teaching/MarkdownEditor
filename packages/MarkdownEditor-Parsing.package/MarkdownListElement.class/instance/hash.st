comparing
hash

	^ super hash 
		bitXor:
			(self indentation hash
		bitXor:
			(self listMarker hash
		bitXor: 
			(self isOrdered hash)))