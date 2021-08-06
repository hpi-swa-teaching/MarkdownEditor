tests - helper
testNeedToBeSkipped2

	textStyler text: '    ' asText.
	
	self assert: false equals: (textStyler isCharNotSkippableAt: 1)