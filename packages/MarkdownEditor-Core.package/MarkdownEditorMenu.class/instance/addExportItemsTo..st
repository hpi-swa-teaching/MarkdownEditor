yellowButtonMenu
addExportItemsTo: aMenu

	| items |
	items := OrderedCollection withAll:
		{
			#-.
			{'convert to html' translated. #convertToHTML}.
			{'appearance...' translated. #openSettings}.
			{'open parsing tree' translated. #openParsingTree}.
		}.
	^ aMenu
		addList: items;
		yourself