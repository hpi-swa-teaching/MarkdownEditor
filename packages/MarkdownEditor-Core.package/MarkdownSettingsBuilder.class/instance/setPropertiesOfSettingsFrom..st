building
setPropertiesOfSettingsFrom: aBuilder

	self settings contentMorph: (aBuilder widgetAt: #content ifAbsent: []).
	self settings window: (aBuilder widgetAt: #windowMorph ifAbsent: []).
	self settings showStylerMorphsFor: 'General'