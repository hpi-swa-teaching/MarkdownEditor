tests
testItalic

	string beItalic.
	self assert: (string asText runs values) equals: {{TextEmphasis italic}}.
	self assert: string isItalic.
	string beNormal.
	self assert: string isItalic not