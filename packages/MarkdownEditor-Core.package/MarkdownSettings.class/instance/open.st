event handling
open

	self change: self currentStyleSettings.
	self ifWindowNotPresent: [ToolBuilder open: self].
	^ self window