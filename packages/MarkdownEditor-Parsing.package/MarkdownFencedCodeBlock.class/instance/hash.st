comparing
hash

	^ super hash 
		bitXor: 
			(self indentation hash 
		bitXor: 
			(self info hash 
		bitXor: 
			self openingFence hash))