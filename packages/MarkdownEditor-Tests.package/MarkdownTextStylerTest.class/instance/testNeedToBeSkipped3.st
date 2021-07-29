tests - helper
testNeedToBeSkipped3

	textStyler text: 't  ', Character cr, ' t'.
	self assert: false equals: (textStyler isCharSkippableAt: 1).
	self assert: true equals: (textStyler isCharSkippableAt: 2).
	self assert: true equals: (textStyler isCharSkippableAt: 3).
	self assert: false equals: (textStyler isCharSkippableAt: 4).
	self assert: true equals: (textStyler isCharSkippableAt: 5).
	self assert: false equals: (textStyler isCharSkippableAt: 6)