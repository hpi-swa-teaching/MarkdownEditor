content
showStylerMorphsFor: aCategory

	self removeCurrentStylerMorphs.
	self addStylerMorphsFor: aCategory.
	self applyUserInterfaceTheme