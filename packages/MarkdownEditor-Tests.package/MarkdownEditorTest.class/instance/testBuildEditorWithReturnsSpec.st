tests
testBuildEditorWithReturnsSpec

	| spec |
	spec := MarkdownEditor new buildEditorWith: toolbuilder.
	self assert: (spec isKindOf: PluggableTextSpec)
	
	