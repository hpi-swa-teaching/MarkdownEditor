building
buildWith: aBuilder

	| windowSpec treeSpec tool |
	windowSpec := self windowSpec: aBuilder.
	treeSpec := self treeSpec: aBuilder.
	windowSpec children add: treeSpec.

	tool := aBuilder build: windowSpec.
	self changed: #expandRootsRequested.
	^ tool