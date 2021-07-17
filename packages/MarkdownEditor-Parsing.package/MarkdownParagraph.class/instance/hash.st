comparing
hash
	"Answer an integer value that is related to the identity of the receiver."

	^ self inlines hash
		bitXor:
			(self innerLine hash
				bitXor:
					(self content hash
						bitXor:
							(self container hash
								bitXor:
									(self isOpen hash bitXor: (self endPosition hash bitXor: (self startPosition hash bitXor: self innerStartPosition hash))))))