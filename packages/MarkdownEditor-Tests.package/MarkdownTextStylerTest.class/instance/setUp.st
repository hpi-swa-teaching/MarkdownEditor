running
setUp

	textStyler := MarkdownTextStyler new.
	originalStyleSettings := MarkdownSettings currentStyleSettings.
	MarkdownSettings currentStyleSettings: self styleSettingsForStylingTests.
	MarkdownSettings UniqueInstance newStyleSettings: self styleSettingsForStylingTests