building
buildWith: aBuilder

	| windowSpec window |
	windowSpec := self buildWindowWith: aBuilder specs: (self windowSpecsFor: aBuilder).
	window := aBuilder build: windowSpec.
	self textMorph: (aBuilder widgetAt: #textMorph).
	self createSettings.
	 
	^ window