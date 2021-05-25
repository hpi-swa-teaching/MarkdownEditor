userInterface
adoptTabsToTheme

	self tabMorph color: MarkdownStyleSettings themeButtonMorphColor.
	self tabMorph submorphs
			do: [:text | text subMorph color: MarkdownStyleSettings themeButtonMorphTextColor]