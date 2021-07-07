comparing
hash
	"Answer an integer value that is related to the identity of the receiver."

	^ self isEmail hash bitXor: self path hash