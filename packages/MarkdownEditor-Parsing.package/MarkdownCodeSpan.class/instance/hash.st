comparing
hash

	^ super hash 
		bitXor: 
			(self code hash
		bitXor: 
			(self fenceLength hash 
		bitXor: 
			self rawContent hash))