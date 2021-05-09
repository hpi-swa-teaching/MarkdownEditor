initialize
initializeTabs

	| newTabMorph |
	newTabMorph := (PluggableTabBarMorph on: self)
		extent: 200@25;
		color: self themeButtonMorphColor;
		yourself.
	self blockCategories do: [:category | newTabMorph 
			addTab: category 
			withAction: [self showStylerMorphsFor: category]].
	newTabMorph submorphs do: [:text | text subMorph color: self themeButtonMorphTextColor].
	self tabMorph: newTabMorph.
	self contentMorph scroller addMorph: (newTabMorph position: 20@10)