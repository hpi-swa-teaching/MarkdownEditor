tests - window
testBuildingEditorTextMorphReturnsSpec

	| spec |
	spec := MarkdownEditor new buildEditorTextMorphWith: toolbuilder.
	self assert: (spec isKindOf: PluggableTextSpec)
	
	