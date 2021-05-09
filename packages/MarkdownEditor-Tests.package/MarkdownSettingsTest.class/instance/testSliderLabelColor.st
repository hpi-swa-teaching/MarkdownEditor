color
testSliderLabelColor

	| blockStyler |
	
	blockStyler := MarkdownBlockStylerMorph 
					for: 'TestLabel' 
					with: true 
					and: true 
					and: 'TestCategory'.
	
	self assert: ((blockStyler sliderLabel color) = (UserInterfaceTheme current properties at: (DialogWindow ->#textColor))).
	