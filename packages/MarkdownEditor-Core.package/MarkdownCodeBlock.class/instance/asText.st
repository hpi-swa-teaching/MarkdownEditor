converting
asText

	| result |
	result := self firstLine asText, self codeContentAsText.
	self isClosed
		ifTrue: [result := result, self lastLine asText].
	self addAttributesTo: result.
	^ result