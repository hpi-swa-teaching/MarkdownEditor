tests - ui
testLabelForHeadings

	settings showStylerMorphsFor: 'Headings'.
	self assert: 'Markdown Editor - Settings: Headings' equals: settings window label