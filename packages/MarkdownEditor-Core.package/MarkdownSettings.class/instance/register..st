event handling
register: aMarkdownEditor

	self addDependent: aMarkdownEditor.
	self change: self currentStyleSettings