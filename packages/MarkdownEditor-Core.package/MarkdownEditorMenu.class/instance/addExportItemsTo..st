yellowButtonMenu
addExportItemsTo: aMenu

    | items |
    items := OrderedCollection withAll:
        {
		   #-.
          {'convert to html' translated. #convertToHTML}.
          {'appearance...' translated. #openSettings}
        }.
    ^ aMenu
			addList: items;
			yourself