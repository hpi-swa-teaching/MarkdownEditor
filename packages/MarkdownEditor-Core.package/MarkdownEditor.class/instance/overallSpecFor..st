toolbuilder
overallSpecFor: aBuilder

	^ {(LayoutFrame fractions: (0 @ 0 corner: 1 @ 1) 
		offsets: (0 @ 0 corner: 0 @ 0)) 
		-> [self editorTextMorphSpecFor: aBuilder]}