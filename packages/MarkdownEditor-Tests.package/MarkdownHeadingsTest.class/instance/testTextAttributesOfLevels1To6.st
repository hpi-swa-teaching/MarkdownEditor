tests
testTextAttributesOfLevels1To6

	#('# level1' 34 '## level2' 28 '### level3' 22 '#### level4' 19 '##### level5' 16
	'###### level6' 14) pairsDo: [:string :size | 
		self assert: string asTextHasAttributes: {self headingFontSized: size}]
