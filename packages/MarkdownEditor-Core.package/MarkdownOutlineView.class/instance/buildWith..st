building
buildWith: aBuilder

	| windowSpec tool |
	windowSpec := self buildWindowWith: aBuilder specs: (self overallSpecFor: aBuilder).
	tool := aBuilder build: windowSpec.
	self changed: #expandRootsRequested.
	^ tool