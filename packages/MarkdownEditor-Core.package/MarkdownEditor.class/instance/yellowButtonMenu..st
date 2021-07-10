yellowButtonMenu
yellowButtonMenu: aMenu

	self textSelected
		ifTrue: [self addButtonMenuItemsSelectionTo: aMenu]
		ifFalse: [self addButtonMenuItemsTo: aMenu].
	^ aMenu