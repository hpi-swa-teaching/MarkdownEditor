yellowButtonMenu
yellowButtonMenu: aMenu 

	self textSelected
		ifTrue: [self isMultilineSelection
				ifTrue: [self addMenuItemsMuliSelectionTo: aMenu]
				ifFalse: [self addMenuItemsSingleSelectionTo: aMenu]]
		ifFalse: [self addMenuItemsTo: aMenu].
	^ aMenu