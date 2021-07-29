comparing
hash

	^ super hash 
		bitXor: 
			(self isEmail hash 
		bitXor: 
			self path hash)