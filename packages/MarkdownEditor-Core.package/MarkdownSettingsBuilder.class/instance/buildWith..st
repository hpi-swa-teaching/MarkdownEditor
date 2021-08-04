building
buildWith: aBuilder

	| windowSpec window |
	windowSpec := self buildWindowWith: aBuilder specs: (self overallSpecFor: aBuilder).
	windowSpec name: #windowMorph.
	window := aBuilder build: windowSpec.
	self setPropertiesOfSettingsFrom: aBuilder.
	self configureCloseButton.
	^ window