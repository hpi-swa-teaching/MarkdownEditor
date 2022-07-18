event handling
open

	self change.
	self ifWindowNotPresent: [MarkdownSettingsBuilder openFor: self].
	self window comeToFront.
	^ self window