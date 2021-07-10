yellowButtonMenu
addButtonMenuItemsTo: aMenu

    | fileSystem other |
    fileSystem := OrderedCollection withAll:
        {
            {'new' translated.            #createNewInstance}.
            {'open...' translated.        #openFileDialog}.
            {'save' translated.        #saveText}.
            {'save as...' translated.    #saveAsFileDialog}.
            #-.
        }.
    other := OrderedCollection withAll:
        {
		   #-.
            {'convert to html' translated. #convertToHTML}.
            #-.
            {'appearance...' translated. #openSettings}
        }.
    aMenu addList: fileSystem.
    self addFindReplaceItemsTo: aMenu.
    aMenu addList: other.
    ^ aMenu