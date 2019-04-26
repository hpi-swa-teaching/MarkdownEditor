tests
testNormal

	self assert: (string asText runs values) equals: #(#()).
	self assert: string isNormal.
	string beBold.
	self assert: string isNormal not.
	string beNormal.
	self assert: string isNormal