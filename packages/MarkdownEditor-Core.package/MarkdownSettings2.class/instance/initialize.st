initialize
initialize

	super initialize.
	self blockStylerMorphs: OrderedCollection new.
	self editor: OrderedCollection new.
	self windowMorph: #noWindow.
	
	self initializeBlockStylerMorphs.
	self currentStyleSettings: MarkdownStyleSettings default
	