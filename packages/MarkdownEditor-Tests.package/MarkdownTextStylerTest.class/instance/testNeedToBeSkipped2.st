tests - helper
testNeedToBeSkipped2

	textStyler text: '    ' asText.
	self assert: true equals: (textStyler isCharSkippableAt: 1)