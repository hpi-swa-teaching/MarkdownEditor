yellowButtonMenu
addMenuItemsSingleSelectionTo: aMenu

	^ self
		addInlineItemsTo: aMenu;
		addSingleInlineItemsTo: aMenu;
		addFindReplaceItemsTo: aMenu;
		yourself