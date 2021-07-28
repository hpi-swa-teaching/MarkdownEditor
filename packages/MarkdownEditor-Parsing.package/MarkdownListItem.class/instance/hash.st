comparing
hash

	^ super hash 
		bitXor:
			(self indentation hash
		bitXor:
			(self listMarker hash
		bitXor: 
			(self number hash
		bitXor: 
			(self isOrdered hash))))