event handling
open

	self change: self currentStyleSettings.
	
	self isWindowPresent ifFalse: [ToolBuilder open: UniqueInstance]