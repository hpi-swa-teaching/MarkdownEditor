tabs
removeCurrentStylerMorphs

	self contentMorph scroller removeAllMorphsIn: (self contentMorph scroller submorphs select: [:morph | morph isKindOf: MarkdownBlockStylerMorph]).