accessing
assertRuns: runs values: values areStyleOf: aText

	inlineParser privateStyle: aText.
	self
		assert: runs equals: aText runs runs;
		assert: (self attributesOf: values) equals: (self attributesOf: aText runs values)