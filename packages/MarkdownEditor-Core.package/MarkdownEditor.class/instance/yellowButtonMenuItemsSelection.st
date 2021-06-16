yellowButtonMenu
yellowButtonMenuItemsSelection

	| entries |
	entries := OrderedCollection withAll:
		{
			{'italic' translated.	   #applyItalic}.
			{'bold' translated.		   #applyBold}.
			{'strikeout' translated. #applyStrikeout}
		}.
	^ entries