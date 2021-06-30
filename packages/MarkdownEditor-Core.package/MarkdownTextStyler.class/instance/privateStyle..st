styling
privateStyle: aText

	| text |
	self document: (MarkdownParser new parse: aText string).
	text := self styleDocumentWith: self document.
	aText size = text size
		ifFalse: [text := self handleWhiteSpacesWith: aText and: text].
	aText runs: text runs