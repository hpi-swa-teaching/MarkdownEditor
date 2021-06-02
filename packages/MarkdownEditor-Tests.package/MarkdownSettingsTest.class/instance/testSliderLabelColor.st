tests - appearance
testSliderLabelColor

	settings blockStylerMorphs 
		do:[:blockStyler | 
			self assert: ((blockStyler sliderLabel color) 
				= (UserInterfaceTheme current properties at: (DialogWindow ->#textColor)))]
	