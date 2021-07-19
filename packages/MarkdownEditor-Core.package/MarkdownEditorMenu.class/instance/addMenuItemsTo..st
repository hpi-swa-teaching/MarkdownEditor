yellowButtonMenu
addMenuItemsTo: aMenu

    ^ self
		addFileItemsTo: aMenu;
		addFindReplaceItemsTo: aMenu;
		addExportItemsTo: aMenu;
		yourself