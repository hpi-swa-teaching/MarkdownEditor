settings
createSettings

	self settingsMenu: ((MarkdownSettings labelled: 'Markdown Editor - Settings')
		currentStyleSettings: self blockTextStyler styleSettings;
		onChange: [:aStyleSettings | 
			self blockTextStyler styleSettings: aStyleSettings. 
		  	self saveTextInModel];
		yourself)