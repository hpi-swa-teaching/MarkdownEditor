tests - styling
testStyleItalicWithBoldEmphases

	| text |
	text := '***Mini**Metro*' asText.
	inlineTextStyler privateStyle: text.
	self
		assertRuns: {1. 8. 6} 
		values: {{TextEmphasis italic . TextColor black}. 
			{TextEmphasis italic. TextEmphasis bold . TextColor black}.
			{TextEmphasis italic . TextColor black}}
		areStyleOf: text