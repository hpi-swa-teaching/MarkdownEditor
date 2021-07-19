yellowButtonMenu
addMenuItemsMuliSelectionTo: aMenu

	^ self
		addInlineItemsTo: aMenu;
		addMultiInlineItemsTo: aMenu;
		addFindReplaceItemsTo: aMenu;
		yourself