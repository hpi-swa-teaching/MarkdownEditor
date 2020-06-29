initialize
initialize

	super initialize.
	self blockStylerMorphs: OrderedCollection new.
	self contentMorph: ScrollPane new.
	self addMorph: contentMorph frame: (0@0 corner: 1@1).
	
	self initializeBlockStylerMorphs.
	self initializeTabs.
	self initializeActions.
	
	
