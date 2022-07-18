test - color
testSliderColorNoChange

	| slider |
	slider := MarkdownSlider new.
	slider mdslider color: Color red.
	slider applyUserInterfaceTheme.
	self assert: slider mdslider color = Color red