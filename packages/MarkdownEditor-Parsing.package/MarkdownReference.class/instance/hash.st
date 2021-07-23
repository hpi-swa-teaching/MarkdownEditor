comparing
hash

	^ super hash 
		bitXor:
			(self path hash 
		bitXor: self children hash)