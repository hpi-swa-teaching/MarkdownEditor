tests - window
testBuildingEditorTextMorphReturnsSpec

	| spec |
	spec := MarkdownEditor new editorTextMorphSpecFor: toolbuilder.
	
	self assert: (spec isKindOf: PluggableTextSpec)