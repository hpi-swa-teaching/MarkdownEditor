building
windowSpecsFor: aBuilder

	^ {(LayoutFrame fractions: (0 @ 0 corner: 1 @ 0) 
		offsets: (0 @ 0 corner: 0 @ (self menuBarHeight))) 
		-> [self buildEditorMenuBarWith: aBuilder].
		
		(LayoutFrame fractions: (0 @ 0 corner: 1 @ 1) 
		offsets: (0 @ (self menuBarHeight) corner: 0 @ 0)) 
		-> [self buildEditorTextMorphWith: aBuilder]}