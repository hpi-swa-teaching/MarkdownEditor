comparing
hash

	^ self innerLine hash
			bitXor:
		(self endPosition hash
			bitXor:
		(self container hash
			bitXor: 
		(self isOpen hash 
			bitXor: 
		(self innerStartPosition hash 
			bitXor: 
		self startPosition hash))))