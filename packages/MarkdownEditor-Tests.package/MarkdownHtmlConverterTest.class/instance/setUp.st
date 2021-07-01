running
setUp

	htmlConverter := MarkdownHtmlConverter new.
	parser := MarkdownParser new.
	oldStyleSettings := MarkdownSettings currentStyleSettings.
	MarkdownSettings currentStyleSettings: self styleSettingsForHtmlTests