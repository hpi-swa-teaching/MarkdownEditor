yellowButtonMenu
addFileItemsTo: aMenu

    | items |
    items := OrderedCollection withAll:
        {
            {'new' translated.            #createNewInstance}.
            {'open...' translated.        #openFileDialog}.
            {'save' translated.        #saveText}.
            {'save as...' translated.    #saveAsFileDialog}.
            #-.
        }.
    ^ aMenu
			addList: items;
			yourself