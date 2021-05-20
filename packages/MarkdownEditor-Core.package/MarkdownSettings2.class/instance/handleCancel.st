event handling
handleCancel

	self change: self currentStyleSettings.
	self currentStyleSettings: self currentStyleSettings.
	self closeMarkdownOptions