content
showStylerMorphsFor: aCategory

	self removeCurrentStylerMorphs;
		addStylerMorphsFor: aCategory;
		applyUserInterfaceTheme.
	self window label: self label, aCategory