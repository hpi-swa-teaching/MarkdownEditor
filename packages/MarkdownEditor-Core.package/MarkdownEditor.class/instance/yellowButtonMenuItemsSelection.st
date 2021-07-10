yellowButtonMenu
yellowButtonMenuItemsSelection

	| entries |
	entries := OrderedCollection withAll:
		{
			{'italic' translated.	   #applyItalic}.
			{'bold' translated.		   #applyBold}.
			{'strikeout' translated. #applyStrikeout}.
			#-.
			{'find...(f)' translated. #find}.
			{'find again (g)' translated. #findAgain}.
			{'find and replace ...' translated. #findReplace}.
			{'do/replace again (j)' translated. #again}.
			{'find and replace all' translated. #findAndReplaceAll}
		}.
	^ entries