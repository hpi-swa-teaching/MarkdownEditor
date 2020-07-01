converting
asText

	| code result |
	code := self codeContent asText.
	"We use the private method here as the public interface of SHTextStyler does not have a method which only styles and gives the value back to the caller"
	self styler privateStyle: code.
	result := self firstLine asText, code.
	self isClosed
		ifTrue: [result := result, self lastLine asText].
	self addAttributesTo: result.
	^ result