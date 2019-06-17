converting
asText

	| code result |
	code := self codeContent asText.
	self smalltalkStyler privateStyle: code.
	result := self firstLine asText, code.
	self isClosed
		ifTrue: [result := result, self lastLine asText].
	^ result