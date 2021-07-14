yellowButtonMenu
addSingleInlineItemsTo: aMenu

	^ aMenu
		add: 'heading' subMenu: (self addHeadingMenuItemsTo: MenuMorph new);
		add: 'code span' action: [self applyInlineOnSelectionWith: '`'];
		yourself