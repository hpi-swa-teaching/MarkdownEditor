tests - helper
testNeedToBeSkipped4

	textStyler text: '  t'.
	self assert: true equals: (textStyler isCharSkippableAt: 1).
	self assert: true equals: (textStyler isCharSkippableAt: 2).
	self assert: false equals: (textStyler isCharSkippableAt: 3)