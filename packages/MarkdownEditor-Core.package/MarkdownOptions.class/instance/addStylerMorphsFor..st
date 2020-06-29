tabs
addStylerMorphsFor: aCategory

	(self blockStylerMorphs select: [:stylerMorph | stylerMorph classCategory = aCategory]) doWithIndex: [:blockStylerMorph :index |
		self contentMorph scroller addMorph: (blockStylerMorph position: 20@(index * blockStylerMorph height))].