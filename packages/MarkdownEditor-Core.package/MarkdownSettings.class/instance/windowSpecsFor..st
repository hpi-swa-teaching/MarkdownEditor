building
windowSpecsFor: aBuilder

	^ {(LayoutFrame fractions: (0 @ 0 corner: 1 @ 0) 
				offsets: (0 @ 0 corner: 0 @ (self menuBarHeight))) 
				-> [self buildMenuBarWith: aBuilder].
		
		(LayoutFrame fractions: (0 @ 0 corner: 1 @ 1) 
				offsets: (0 @ (self menuBarHeight) corner: 0 @ (1 - self menuBarHeight))) 
				-> [self buildContentWith: aBuilder].
		
		(LayoutFrame fractions: (0 @ 1 corner: 1 @ 1) 
				offsets: (0 @ (1 - self menuBarHeight) corner: 0 @ 0)) 
				-> [self buildApplyBarWith: aBuilder]}