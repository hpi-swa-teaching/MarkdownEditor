comparing
hash
	"Answer an integer value that is related to the identity of the receiver."

	^ self content hash bitXor: (self fenceLength hash bitXor: self rawContent hash)