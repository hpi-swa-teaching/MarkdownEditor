appearance
extent: newExtent

	(bounds extent closeTo: newExtent) ifTrue: [^ self].

	super extent: newExtent.

	self updateFontColorPicker.
	self updateLabels.
	self updateFontSizeSlider
	