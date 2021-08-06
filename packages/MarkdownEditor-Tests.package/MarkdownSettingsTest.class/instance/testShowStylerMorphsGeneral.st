tests - ui
testShowStylerMorphsGeneral

	| expectedGeneralStylerMorphs shownStylerMorphs |
	settings showStylerMorphsFor: 'General'.
	expectedGeneralStylerMorphs := settings blockStylerMorphs select: [:styler | styler classCategory = 'General'].
	shownStylerMorphs := self currentShownStylerMorphs.
	
	self assert: expectedGeneralStylerMorphs asSet equals: shownStylerMorphs