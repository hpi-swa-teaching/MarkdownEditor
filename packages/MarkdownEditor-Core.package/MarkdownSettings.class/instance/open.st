event handling
open

	self change: self currentStyleSettings.
	self ifWindowNotPresent: [MarkdownSettingsBuilder openFor: self].
	^ self window