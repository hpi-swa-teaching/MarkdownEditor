tests
testTextAttributesOfLevels1To6
	
	(Dictionary newFrom: {'# level1'->34. '## level2'->28. '### level3'->22.
	'#### level4'->19. '##### level5'-> 16. '###### level6'-> 14}) 
		keysAndValuesDo: [:string :size |
			self assert: string asTextHasAttributes: {self headingFontSized: size}]
