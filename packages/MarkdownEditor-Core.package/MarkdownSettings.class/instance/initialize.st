initialize
initialize

	super initialize.
	editors := OrderedCollection new.
	self blockStylerMorphs: OrderedCollection new;
		window: self noWindow;
		initializeBlockStylerMorphs;
		settingsVersion: self class settingsVersion;
		currentStyleSettings: MarkdownStyleSettings default
	