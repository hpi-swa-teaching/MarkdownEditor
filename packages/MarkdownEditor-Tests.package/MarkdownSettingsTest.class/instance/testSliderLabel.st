tests - ui
testSliderLabel

	| paragraphBlockStyler |
	paragraphBlockStyler := (settings blockStylerMorphs select: [:blockstyler | blockstyler classLabel text = 'Paragraph' asText]) first.
	paragraphBlockStyler handleSliderChangeTo: 10.
	
	self assert: paragraphBlockStyler sliderLabel text equals: '10' asText.
	paragraphBlockStyler handleSliderChangeTo: 20.
	
	self assert: paragraphBlockStyler sliderLabel text equals: '20' asText.