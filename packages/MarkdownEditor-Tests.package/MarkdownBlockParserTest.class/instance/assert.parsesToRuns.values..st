accessing
assert: markdownString parsesToRuns: runs values: values

	| parsedText |
	parsedText := blockParser parse: markdownString.
	self
		assert: markdownString equals: parsedText string;
		assert: runs equals: parsedText runs runs;
		assert: (self attributesOf: values) equals: (self attributesOf: parsedText runs values)
