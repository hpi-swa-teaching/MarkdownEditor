running
setUp

	originalSettings := MarkdownSettings currentStyleSettings.
	MarkdownSettings deleteInstance.
	MarkdownSettings open.
	settings := MarkdownSettings UniqueInstance.
	
	editor := MarkdownEditor new.
	window := (ToolBuilder default) open: editor