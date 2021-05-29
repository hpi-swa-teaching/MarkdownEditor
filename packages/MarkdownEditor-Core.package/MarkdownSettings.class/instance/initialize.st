initialize
initialize

	super initialize.
	self blockStylerMorphs: OrderedCollection new.
	self editors: OrderedCollection new.
	self window: self noWindow.
	
	self initializeBlockStylerMorphs.
	self currentStyleSettings: MarkdownStyleSettings default
	