styling
styleDocumentWith: aMarkdownContainer

	| text |
	text := aMarkdownContainer children 
		inject: Text new
		into: [:combinedText :child | combinedText, (child applyStylingWith: self)].
	^ text
	