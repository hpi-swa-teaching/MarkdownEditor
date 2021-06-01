building
buildWith: aBuilder

	| windowSpec window |
	windowSpec := self buildWindowWith: aBuilder specs: (self windowSpecsFor: aBuilder).
	windowSpec name: #windowMorph.
	window := aBuilder build: windowSpec.
	self contentMorph: (aBuilder widgetAt: #content ifAbsent: []).
	self window: (aBuilder widgetAt: #windowMorph ifAbsent: []).
	self configureCloseButton.
	self showStylerMorphsFor: self blockCategories first.
	
	^ window