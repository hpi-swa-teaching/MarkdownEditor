changing
adaptToTheme

	self  submorphs
				do: [:sub | sub color: MarkdownStyleSettings themeFontColor].
	self fontSizeSlider mdslider color: MarkdownStyleSettings themeFontColor.
	self fontSizeSlider color: MarkdownStyleSettings themeButtonMorphColor.
	self handleColorPickerChangeTo: (MarkdownStyleSettings default fontColors at: self classLabel) with: nil.