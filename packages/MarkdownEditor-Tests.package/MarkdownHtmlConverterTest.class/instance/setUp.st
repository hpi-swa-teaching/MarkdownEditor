running
setUp

	htmlConverter := MarkdownHtmlConverter new.
	parser := MarkdownParser new.
	parsingState := parser state.
	oldStyleSettings := MarkdownSettings currentStyleSettings.
	MarkdownSettings currentStyleSettings: self styleSettingsForHtmlTests