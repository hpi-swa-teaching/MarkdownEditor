styling
privateStyle: aText

	| text |
	self document: (MarkdownParser new parse: aText string).
	self halt.
	text := self styleDocumentWith: self document.
	"tmp := ' ' asText.
	tmp addAttribute: (TextColor color: Color red).
	text := text, tmp."
	self assert: aText size = text size.
	aText runs: text runs