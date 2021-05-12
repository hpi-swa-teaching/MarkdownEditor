running
setUp

	editor := MarkdownEditor new.
	toolbuilder := ToolBuilder default.
	window := toolbuilder open: editor.
	originalSettings := MarkdownSettings UniqueInstance currentStyleSettings.
