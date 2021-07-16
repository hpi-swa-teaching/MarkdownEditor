helper
assertRuns: anExpectedRunArray areEqualTo: aRunArray

	anExpectedRunArray 
		doWithIndex: [:element :index | 
				self assert: element equals: (aRunArray at: index)]