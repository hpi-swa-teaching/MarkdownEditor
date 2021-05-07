event handling
change: aStyleSettings

	self dependents
		do: [:dependent | 
			dependent blockTextStyler styleSettings: aStyleSettings.
			dependent saveTextInModel]