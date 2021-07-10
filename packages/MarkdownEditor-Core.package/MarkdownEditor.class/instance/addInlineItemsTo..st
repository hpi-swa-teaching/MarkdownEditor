yellowButtonMenu
addInlineItemsTo: aMenu

	| inline|
	inline := OrderedCollection withAll:
		{
			{'italic' translated.	   #applyItalic}.
			{'bold' translated.		   #applyBold}.
			{'strikeout' translated. #applyStrikeout}.
		}.
	^ aMenu 
		addList: inline;
		add: 'heading' subMenu: (MenuMorph new addList: self yellowButtonMenuItemsSelection);
		yourself