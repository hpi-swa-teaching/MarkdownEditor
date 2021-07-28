comparing
hash

	^ super hash 
		bitXor: 
			(self isEmail hash 
		bitXor: 
			self autolinkPath hash)