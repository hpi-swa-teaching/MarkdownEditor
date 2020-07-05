event handling
handleCancel

	self makeChangeTo: self currentStyleSettings.
	self currentStyleSettings: self currentStyleSettings.
	self closeMarkdownOptions.