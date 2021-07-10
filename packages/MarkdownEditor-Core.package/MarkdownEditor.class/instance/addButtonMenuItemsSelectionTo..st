yellowButtonMenu
addButtonMenuItemsSelectionTo: aMenu

	| entries |
	entries := OrderedCollection withAll:
		{
			{'italic' translated.	   #applyItalic}.
			{'bold' translated.		   #applyBold}.
			{'strikeout' translated. #applyStrikeout}.
		}.
	aMenu 
		addList: entries;
		add: 'heading' subMenu: (self addHeadingMenuItemsTo: MenuMorph new);
		add: 'link' subMenu: (self addLinkMenuItemsTo: MenuMorph new);
		add: 'blockquote' action: [self applyBlockquote];
		yourself.
	^ self addFindReplaceItemsTo: aMenu