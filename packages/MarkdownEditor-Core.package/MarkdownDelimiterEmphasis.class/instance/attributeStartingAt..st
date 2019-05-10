attributes
attributeStartingAt: aMarkdownDelimiterEmphasis

	| attrLen start end attributeClass |

	attrLen := {self length. aMarkdownDelimiterEmphasis length. self boldLength} min.
	start := aMarkdownDelimiterEmphasis endPosition - attrLen + 1.
	end := self position + attrLen - 1.
	attributeClass := self attributeTypeStartingAt: aMarkdownDelimiterEmphasis.
	^ attributeClass from: start to: end
