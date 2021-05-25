running
tearDown

	MarkdownSettings UniqueInstance closeMarkdownOptionsIfStillOpen.
	window delete.
	MarkdownSettings UniqueInstance currentStyleSettings: originalSettings.