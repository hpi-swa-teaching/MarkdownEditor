tests - ui
testLabelForGeneral

	settings showStylerMorphsFor: 'General'.
	self assert: 'Markdown Editor - Settings: General' equals: settings window label