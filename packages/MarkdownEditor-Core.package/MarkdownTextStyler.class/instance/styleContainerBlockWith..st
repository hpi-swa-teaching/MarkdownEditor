styling
styleContainerBlockWith: aMarkdownContainer

	| text |
	text := aMarkdownContainer children 
		inject: Text new
		into: [:combinedText :child | combinedText, (child applyStylingWith: self)].
	text := aMarkdownContainer completeTextElementFrom: text.
	text := self addAttribuesFrom: aMarkdownContainer to: text.
	^ text
	