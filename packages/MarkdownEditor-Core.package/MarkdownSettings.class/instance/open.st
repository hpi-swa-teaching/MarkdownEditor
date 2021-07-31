event handling
open

	self change.
	self ifWindowNotPresent: [ToolBuilder open: self].
	^ self window