tests - helper
testNeedToBeSkipped

	textStyler text: 't    ' asText.
	
	self assert: true equals: (textStyler isCharNotSkippableAt: 1)