tests - ui
testShowStylerMorphsLists

	| expectedGeneralStylerMorphs shownStylerMorphs |
	settings showStylerMorphsFor: 'Lists'.
	expectedGeneralStylerMorphs := settings blockStylerMorphs select: [:styler | styler classCategory = 'Lists'].
	
	shownStylerMorphs := self currentShownStylerMorphs.
	
	self assert: expectedGeneralStylerMorphs asSet equals: shownStylerMorphs