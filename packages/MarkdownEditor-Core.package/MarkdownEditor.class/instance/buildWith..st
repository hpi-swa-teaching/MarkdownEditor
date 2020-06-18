building
buildWith: aBuilder

	| windowSpec window |
	windowSpec := self buildWindowWith: aBuilder specs: {
		(LayoutFrame fractions: (0 @ 0 corner: 1 @ 0) offsets: (0 @ 0 corner: 0 @ (self menuBarHeight))) -> [self buildEditorMenuBarWith: aBuilder].
		(LayoutFrame fractions: (0 @ 0 corner: 1 @ 1) offsets: (0 @ (self menuBarHeight) corner: 0 @ 0)) -> [self buildEditorTextMorphWith: aBuilder]}.
	window := aBuilder build: windowSpec.
	self textMorph: (aBuilder widgetAt: #textMorph).
	self optionsMenu: ((MarkdownOptions labelled: 'Markdown Editor - Options')
		currentStyleSettings: self blockTextStyler styleSettings;
		onChange: [:aStyleSettings | self blockTextStyler styleSettings: aStyleSettings. self refreshText]).
	 
	^ window