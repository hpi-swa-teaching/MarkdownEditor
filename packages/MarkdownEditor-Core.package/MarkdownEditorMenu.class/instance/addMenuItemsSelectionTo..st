yellowButtonMenu
addMenuItemsSelectionTo: aMenu

	^ self
			addInlineItemsTo: aMenu;
		 	addFindReplaceItemsTo: aMenu;
		 	yourself