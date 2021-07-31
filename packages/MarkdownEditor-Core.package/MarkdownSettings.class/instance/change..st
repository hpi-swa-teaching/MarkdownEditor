event handling
change: aStyleSettings

	self editors ifEmpty: [].
	self editors
		do: [:editor | editor saveTextInModel]