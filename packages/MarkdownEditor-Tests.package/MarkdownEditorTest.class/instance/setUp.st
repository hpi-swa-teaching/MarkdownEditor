running
setUp

	editor := MarkdownEditor new.
	toolbuilder := ToolBuilder default.
	window := toolbuilder open: editor.
	originalStyleSettings := MarkdownSettings currentStyleSettings.
	MarkdownSettings currentStyleSettings: self styleSettingsForHtmlTests