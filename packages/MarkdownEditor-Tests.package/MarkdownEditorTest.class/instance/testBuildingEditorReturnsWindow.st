tests - window
testBuildingEditorReturnsWindow

	| window |
	window := MarkdownEditor buildWith: toolbuilder.
	self assert: (window isKindOf: SystemWindow)
	
	