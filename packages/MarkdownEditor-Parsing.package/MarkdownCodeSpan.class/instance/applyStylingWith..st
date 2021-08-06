styling
applyStylingWith: aMarkdownStyler

	| fence |
	fence := Text new: self fenceLength.
	^ fence, self rawContent asText, fence