running
tearDown

	MarkdownSettings UniqueInstance window = #noWindow ifFalse:[
		MarkdownSettings UniqueInstance closeMarkdownOptions].
	window delete.
	MarkdownSettings UniqueInstance currentStyleSettings: originalSettings.