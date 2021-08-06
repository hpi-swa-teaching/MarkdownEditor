tests - helper
testNeedToBeSkipped4

	textStyler text: '  t'.
	
	self assert: false equals: (textStyler isCharNotSkippableAt: 1).
	self assert: false equals: (textStyler isCharNotSkippableAt: 2).
	self assert: true equals: (textStyler isCharNotSkippableAt: 3)