converting
codeContentAsText

	| code |
	code := self codeContent asText.
	self styler privateStyle: code.
	^ code