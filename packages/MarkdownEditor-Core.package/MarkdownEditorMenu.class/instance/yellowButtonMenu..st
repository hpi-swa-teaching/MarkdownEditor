yellowButtonMenu
yellowButtonMenu: aMenu

	self textSelected
		ifTrue: [self addMenuItemsSelectionTo: aMenu]
		ifFalse: [self addMenuItemsTo: aMenu].
	^ aMenu