event handling
open

	self change: self currentStyleSettings.
	
	self ifWindowNotPresent: [ToolBuilder open: UniqueInstance].
	
	^ self window