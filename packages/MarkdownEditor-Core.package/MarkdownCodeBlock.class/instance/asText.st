converting
asText

	| code result |
	code := self codeContent asText.
	self styler privateStyle: code. "We use the private method here as the public interface of SHTextStyler does not have a method which only styles and gives the value back to the caller"
	result := self firstLine asText, code.
	self isClosed
		ifTrue: [result := result, self lastLine asText].
	^ result