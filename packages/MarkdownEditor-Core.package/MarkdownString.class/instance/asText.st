converting
asText

	| attributedText |
	attributedText := self content asText.
	self isBold ifTrue: [attributedText addAttribute: TextEmphasis bold].
	self isItalic ifTrue: [attributedText addAttribute: TextEmphasis italic].
	^ attributedText