initialize
initializeTabs

	| newTabMorph |
	newTabMorph := (PluggableTabBarMorph on: self)
		extent: 200@25;
		color: Color gray;
		yourself.
	self blockCategories do: [:category | newTabMorph 
			addTab: category 
			withAction: [self showStylerMorphsFor: category]].
	self tabMorph: newTabMorph.
	self contentMorph scroller addMorph: (newTabMorph position: 20@10)