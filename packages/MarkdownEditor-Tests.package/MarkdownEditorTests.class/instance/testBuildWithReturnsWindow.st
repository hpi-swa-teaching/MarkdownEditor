tests
testBuildWithReturnsWindow

	| window |
	window := MarkdownEditor buildWith: toolbuilder.
	self assert: (window isKindOf: SystemWindow)
	
	