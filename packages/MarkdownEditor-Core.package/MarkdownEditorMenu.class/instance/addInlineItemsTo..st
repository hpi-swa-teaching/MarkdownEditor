yellowButtonMenu
addInlineItemsTo: aMenu

	^ aMenu 
		add: 'italic' action: [self applyInlineOnSelectionWith: '*'];
		add: 'bold' action: [self applyInlineOnSelectionWith: '**'];
		add: 'strikeout' action: [self applyInlineOnSelectionWith: '~~'];
		add: 'heading' subMenu: (self addHeadingMenuItemsTo: MenuMorph new);
		add: 'link' subMenu: (self addLinkMenuItemsTo: MenuMorph new);
		add: 'blockquote' action: [self applyBlockquote];
		yourself