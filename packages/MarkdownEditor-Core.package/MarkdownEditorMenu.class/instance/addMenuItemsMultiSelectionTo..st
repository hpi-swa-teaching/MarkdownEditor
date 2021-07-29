yellowButtonMenu
addMenuItemsMultiSelectionTo: aMenu

	^ self
		addInlineItemsTo: aMenu;
		addMultiInlineItemsTo: aMenu;
		addFindReplaceItemsTo: aMenu;
		yourself