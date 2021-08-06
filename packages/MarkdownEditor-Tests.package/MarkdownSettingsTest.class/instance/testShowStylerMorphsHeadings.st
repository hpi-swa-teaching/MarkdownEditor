tests - ui
testShowStylerMorphsHeadings

	| expectedGeneralStylerMorphs shownStylerMorphs |
	settings showStylerMorphsFor: 'Headings'.
	expectedGeneralStylerMorphs := settings blockStylerMorphs select: [:styler | styler classCategory = 'Headings'].
	shownStylerMorphs := self currentShownStylerMorphs.
	
	self assert: expectedGeneralStylerMorphs asSet equals: shownStylerMorphs