toolbuilder
buildWith: aBuilder

	| windowSpec |
	windowSpec := self buildWindowWith: aBuilder specs: (self overallSpecFor: aBuilder).
	windowSpec name: #windowMorph.
	self window: (aBuilder build: windowSpec).
	self pluggableTextMorph: (aBuilder widgetAt: #textMorph).
	self registerSettings;
		configureCloseButton.
	self window setProperty: #noUserInterfaceTheme toValue: true.
	^ self window