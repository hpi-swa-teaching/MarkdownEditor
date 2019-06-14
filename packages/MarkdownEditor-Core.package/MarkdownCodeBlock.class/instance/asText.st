converting
asText

	| code result |
	code := self styler styledTextFor: self codeContent asText.
	result := self firstLine asText, code.
	self isClosed
		ifTrue: [result := result, self lastLine asText].
	^ result