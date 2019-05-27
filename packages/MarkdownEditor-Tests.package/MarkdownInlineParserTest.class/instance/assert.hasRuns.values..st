accessing
assert: aText hasRuns: runs values: values

	self
		assert: runs equals: aText runs runs;
		assert: (self attributesOf: values) equals: (self attributesOf: aText runs values)