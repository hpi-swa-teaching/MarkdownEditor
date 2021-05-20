event handling
open

	self addDependent: self editor.
	self change: self currentStyleSettings.
	
	self windowMorph = #noWindow ifTrue: [ToolBuilder open: UniqueInstance]