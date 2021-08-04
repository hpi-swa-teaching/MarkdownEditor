tests - ui
testLabelForCategories

	settings showStylerMorphsFor: 'General'.
	self assert: 'Markdown Editor - Settings: General' equals: settings window label.
	
	settings showStylerMorphsFor: 'Headings'.
	self assert: 'Markdown Editor - Settings: Headings' equals: settings window label.
	
	settings showStylerMorphsFor: 'Lists'.
	self assert: 'Markdown Editor - Settings: Lists' equals: settings window label.