styling
addAttribuesFrom: aMarkdownElement to: aText

	| text |
	text := aText.
	text addAttribute: aMarkdownElement textAttribute
		from: aMarkdownElement startPosition
		to: aMarkdownElement endPosition.
	text addAttribute: aMarkdownElement textColor
		from: aMarkdownElement startPosition
		to: aMarkdownElement endPosition.
	^ text