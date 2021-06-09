test - text
testTextAttributesOfLevels1To4

	(Dictionary newFrom: {'- L1'->14. '	- L2'->12. '		- L3'->10. '			- L4'->10}) 
		keysAndValuesDo: [:string :size | | line parsedText expectedColor |
			line := MarkdownLine newFrom: string with: MarkdownStyleSettings default.
			parsedText := (MarkdownUnorderedList newFrom: line) asText.
			expectedColor := MarkdownStyleSettings themeTitleFontColor. 
			self 
				assertRuns: {4}
				values: {{TextColor color: expectedColor. self fontSized: size}}
				areStyleOf: parsedText.] 