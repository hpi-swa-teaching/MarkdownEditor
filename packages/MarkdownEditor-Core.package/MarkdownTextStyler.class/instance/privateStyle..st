styling
privateStyle: aText

	self document: (MarkdownParser new parse: aText string).
	self text: (self resetStylingIn: aText).
	self styleChildrenFrom: self document.
	self text runs coalesce