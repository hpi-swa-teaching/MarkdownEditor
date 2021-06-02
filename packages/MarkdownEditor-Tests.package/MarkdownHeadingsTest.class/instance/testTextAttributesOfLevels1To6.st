tests
testTextAttributesOfLevels1To6
	
	(Dictionary newFrom: {'# H1'->34. '## H2'->28. '### H3'->22.
	'#### H4'->19. '##### H5'->16. '###### H6'->14}) 
		keysAndValuesDo: [:string :size | | line parsedText expectedColor |
			line := MarkdownLine newFrom: string with: MarkdownStyleSettings default.
			parsedText := (MarkdownHeading newFrom: line) asText.
			"self assert: {{TextColor black. self fontSized: size}} equals: parsedText runs values]"
			expectedColor := MarkdownStyleSettings themeTitleFontColor. 
			self 
				assertRuns: {5}
				values: {{TextColor color: expectedColor. self fontSized: size}}
				areStyleOf: parsedText.]