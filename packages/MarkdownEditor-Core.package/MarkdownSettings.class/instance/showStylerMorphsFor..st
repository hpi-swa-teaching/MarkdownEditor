content
showStylerMorphsFor: aCategory

	self removeCurrentStylerMorphs.
	self addStylerMorphsFor: aCategory.
	self applyUserInterfaceTheme.
	self window label: self label, aCategory