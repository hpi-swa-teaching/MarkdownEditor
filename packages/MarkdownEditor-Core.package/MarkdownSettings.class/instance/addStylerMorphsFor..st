tabs
addStylerMorphsFor: aCategory

	| blockStylerMorphsToAdd |
	blockStylerMorphsToAdd := self blockStylerMorphs select: [:stylerMorph | stylerMorph classCategory = aCategory].

	blockStylerMorphsToAdd doWithIndex: [:blockStylerMorph :index |
		self contentMorph scroller addMorphBack: (blockStylerMorph position: 20@(index * blockStylerMorph height))].