accessing
assert: markdownString parsesToRuns: runs values: values

	| text |
	text := markdownString asText.
	blockParser privateStyle: text.
	self
		assert: markdownString equals: text string;
		assert: runs equals: text runs runs;
		assert: (self attributesOf: values) equals: (self attributesOf: text runs values)
