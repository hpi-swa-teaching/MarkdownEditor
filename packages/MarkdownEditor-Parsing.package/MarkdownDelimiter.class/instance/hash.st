comparing
hash
	"Answer an integer value that is related to the identity of the receiver."

	^ self isPotentialOpener hash
		bitXor:
			(self isOriginalOpenerAndCloser hash
				bitXor:
					(self count hash
						bitXor:
							(self isValid hash bitXor: (self type hash bitXor: (self inlineIndex hash bitXor: self isPotentialCloser hash)))))