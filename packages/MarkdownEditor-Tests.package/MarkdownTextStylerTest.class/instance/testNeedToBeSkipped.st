tests - helper
testNeedToBeSkipped

	textStyler text: 't    ' asText.
	self assert: false equals: (textStyler isCharSkippableAt: 1)