running
setUp

	originalSettings := MarkdownSettings currentStyleSettings.
	MarkdownSettings deleteInstance.
	MarkdownSettings open.
	settings := MarkdownSettings UniqueInstance.
	
	editor := MarkdownEditor new.
	toolbuilder := ToolBuilder default.
	window := toolbuilder open: editor