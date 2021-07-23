comparing
hash

	^ super hash 
		bitXor: 
			(self content hash
		bitXor: 
			(self fenceLength hash 
		bitXor: 
			self rawContent hash))