initialize-release
initialize

	self editors: OrderedCollection new.
	self blockStylerMorphs: OrderedCollection new;
		initializeBlockStylerMorphs;
		window: self noWindow;
		settingsVersion: self class settingsVersion;
		currentStyleSettings: MarkdownStyleSettings default
	