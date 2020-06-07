initialize-release
initialize

	super initialize.
	self contentMorph: ScrollPane new.

	self initializeHeaderSettings.
	self initializeActions.
	
	self addMorph: contentMorph frame: (0@0 corner: 1@1).
