styling
addAttribuesFrom: aMarkdownElement to: aText

	| text |
	text := aText.
	"self halt."
	text addAttribute: aMarkdownElement textAttribute.
	text addAttribute: aMarkdownElement textColor.
	^ text