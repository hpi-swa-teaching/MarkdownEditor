building
buildWith: aBuilder
	
	| windowSpec |
	windowSpec := self buildWindowWith: aBuilder specs: {
		(0@0 corner: 1@1) -> [self buildEditorWith: aBuilder]
		}.
	windowSpec label: 'Markdown Editor'.
	^ aBuilder build: windowSpec
	