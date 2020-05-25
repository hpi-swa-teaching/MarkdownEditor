building
buildWith: aBuilder

	| windowSpec |
	windowSpec := self buildWindowWith: aBuilder specs: {
		(LayoutFrame fractions: (0 @ 0 corner: 1 @ 0) offsets: (0 @ 0 corner: 0 @ (MarkdownEditorMenuBar height))) -> [MarkdownEditorMenuBar buildWith: aBuilder].
		(LayoutFrame fractions: (0 @ 0 corner: 1 @ 1) offsets: (0 @ (MarkdownEditorMenuBar height) corner: 0 @ 0)) -> [self buildEditorTextMorphWith: aBuilder]}.

	 ^ aBuilder build: windowSpec