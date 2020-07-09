initialize
initializeTabs

	| tabMorph |
	tabMorph := (PluggableTabBarMorph on: self)
		extent: 200@25;
		color: Color gray;
		yourself.
	self blockCategories do: [:category | tabMorph addTab: category withAction: [self showStylerMorphsFor: category]].
	self tabMorph: tabMorph.
	self contentMorph scroller addMorph: (tabMorph position: 20@10).