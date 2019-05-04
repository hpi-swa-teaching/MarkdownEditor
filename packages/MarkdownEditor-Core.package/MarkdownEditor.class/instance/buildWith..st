building
buildWith: aBuilder
	
	| windowSpec |
	windowSpec := aBuilder pluggableWindowSpec new
		model: self;
		children: {self buildEditorWith: aBuilder};
		label: 'Markdown Editor';
		yourself.
	^ aBuilder build: windowSpec
	