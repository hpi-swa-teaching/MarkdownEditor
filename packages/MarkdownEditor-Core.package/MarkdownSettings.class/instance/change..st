event handling
change: aStyleSettings

	self editors do: [:editor | editor blockTextStyler styleSettings: aStyleSettings.
							 editor saveTextInModel]
