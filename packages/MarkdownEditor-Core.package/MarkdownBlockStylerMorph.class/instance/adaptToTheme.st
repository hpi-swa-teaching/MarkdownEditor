changing
adaptToTheme

	self  submorphs
				do: [:sub | sub color: MarkdownStyleSettings themeFontColor].
	self fontSizeSlider mdslider color: MarkdownStyleSettings themeFontColor.
	self fontSizeSlider color: MarkdownStyleSettings themeButtonMorphColor.
	self fontColorPicker adaptToTheme.
	"self fontColorPicker adjustTo: (MarkdownStyleSettings default fontColors at: self classLabel)"
	