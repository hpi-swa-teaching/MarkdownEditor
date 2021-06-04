building
buildWith: aBuilder

	| windowSpec window |
	windowSpec := self buildWindowWith: aBuilder specs: (self windowSpecsFor: aBuilder).
	windowSpec name: #windowMorph.
	window := aBuilder build: windowSpec.
	self textMorph: (aBuilder widgetAt: #textMorph).
	self window: (aBuilder widgetAt: #windowMorph ifAbsent: []).
	self registerSettings;
		configureCloseButton.
	self window setProperty: #noUserInterfaceTheme toValue: true.
	 
	^ window