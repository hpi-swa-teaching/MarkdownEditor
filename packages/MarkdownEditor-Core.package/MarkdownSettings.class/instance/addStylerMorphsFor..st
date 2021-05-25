content
addStylerMorphsFor: aCategory

	| blockStylerMorphsToAdd |
	blockStylerMorphsToAdd := self blockStylerMorphs select: [:stylerMorph | 
		stylerMorph classCategory = aCategory].

	blockStylerMorphsToAdd doWithIndex: [:blockStylerMorph :index |
		| positionedMorph |
		positionedMorph := blockStylerMorph position: 20@(index - 0.5 * blockStylerMorph height).
		self contentMorph scroller addMorphBack: positionedMorph]