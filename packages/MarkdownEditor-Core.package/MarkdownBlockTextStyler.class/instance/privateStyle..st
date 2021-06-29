as yet unclassified
privateStyle: aText

	| text |
	self document: (MarkdownParser new parse: aText string).
	text := self styleDocumentWith: self document.
	aText = text
		ifFalse: [text := self handleWhiteSpacesWith: aText and: text. self halt].
	aText runs: text runs