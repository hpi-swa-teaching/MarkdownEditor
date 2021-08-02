tests - helper
testNeedToBeSkipped3

	textStyler text: 't  ', Character cr, ' t'.
	self assert: true equals: (textStyler isCharNotSkippableAt: 1).
	self assert: false equals: (textStyler isCharNotSkippableAt: 2).
	self assert: false equals: (textStyler isCharNotSkippableAt: 3).
	self assert: true equals: (textStyler isCharNotSkippableAt: 4).
	self assert: false equals: (textStyler isCharNotSkippableAt: 5).
	self assert: true equals: (textStyler isCharNotSkippableAt: 6)