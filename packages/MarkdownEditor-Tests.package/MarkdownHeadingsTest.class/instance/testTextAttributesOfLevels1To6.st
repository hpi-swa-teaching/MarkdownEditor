tests
testTextAttributesOfLevels1To6
	
	(Dictionary newFrom: {'# H1'->34. '## H2'->28. '### H3'->22.
	'#### H4'->19. '##### H5'->16. '###### H6'->14}) 
		keysAndValuesDo: [:string :size | | line parsedText |
			line := MarkdownLine newFrom: string.
			parsedText := (MarkdownHeading newFrom: line) asText.
			self assert: {{self headingFontSized: size}} equals: parsedText runs values]