accessing
assertRuns: runs values: values areStyleOf: aText

	self
		"assert: runs equals: aText runs runs;"
		assert: (self attributesOf: values) equals: (self attributesOf: aText runs values).