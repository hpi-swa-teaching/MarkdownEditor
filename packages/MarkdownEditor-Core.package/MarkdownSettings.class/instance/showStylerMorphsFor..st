content
showStylerMorphsFor: aCategory

	self removeCurrentStylerMorphs.
	self addStylerMorphsFor: aCategory.
	self applyUserInterfaceTheme.
	self window label: 'Markdown Editor - Settings: ', aCategory