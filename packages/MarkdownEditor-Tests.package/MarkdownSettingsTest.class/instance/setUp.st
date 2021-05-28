running
setUp

	originalSettings := MarkdownSettings UniqueInstance currentStyleSettings.
	MarkdownSettings deleteInstance.
	MarkdownSettings open.
	
	editor := MarkdownEditor new.
	toolbuilder := ToolBuilder default.
	window := toolbuilder open: editor.
	
