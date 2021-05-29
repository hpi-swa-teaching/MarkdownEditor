tests - appearance
testSliderColor

	settings blockStylerMorphs 
		do:[:blockStyler | 
			self assert: ((blockStyler fontSizeSlider mdslider color) 
				= (UserInterfaceTheme current properties at: (DialogWindow ->#textColor)))]
	