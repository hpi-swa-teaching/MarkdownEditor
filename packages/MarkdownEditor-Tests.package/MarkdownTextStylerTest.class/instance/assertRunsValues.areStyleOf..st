helper
assertRunsValues: values areStyleOf: aText

	self assert: (self attributesOf: values) equals: (self attributesOf: aText runs values)