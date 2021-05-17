as yet unclassified
adoptToTheme

	self applyUserInterfaceTheme.
	self submorphs do: [:sub | sub applyUserInterfaceTheme].
	self tabMorph color: MarkdownStyleSettings themeButtonMorphColor.
	self tabMorph submorphs do: [:text | text subMorph color: MarkdownStyleSettings themeButtonMorphTextColor].
	self blockStylerMorphs do: [:stylerMorph | stylerMorph submorphs do: [:sub | sub color: MarkdownStyleSettings themeFontColor]].
	self blockStylerMorphs do: [:stylerMorph | stylerMorph fontSizeSlider mdslider color: MarkdownStyleSettings themeFontColor].
	self blockStylerMorphs do: [:stylerMorph | stylerMorph fontSizeSlider color: MarkdownStyleSettings themeButtonMorphColor].