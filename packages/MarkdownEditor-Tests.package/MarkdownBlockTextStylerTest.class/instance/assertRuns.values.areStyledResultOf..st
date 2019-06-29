accessing
assertRuns: runs values: values areStyledResultOf: markdownString

	| text |
	text := markdownString asText.
	blockTextStyler privateStyle: text.
	self
		assert: markdownString equals: text string;
		assert: runs equals: text runs runs;
		assert: (self attributesOf: values) equals: (self attributesOf: text runs values)