as yet unclassified
privateStyle: aText

	| text |
	self document: (MarkdownParser new parse: aText string).
	text := self styleDocumentWith: self document.
	(aText runs size = text runs size) not
		ifTrue: [text := self handleWhiteSpacesWith: aText and: text.	self halt.].
	aText runs: text runs