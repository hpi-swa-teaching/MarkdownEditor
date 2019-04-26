tests
testBold

	string beBold.
	self assert: (string asText runs values) equals: {{TextEmphasis bold}}.
	self assert: string isBold.
	string beNormal.
	self assert: string isBold not