yellowButtonMenu
addFindReplaceItemsTo: aMenu

	| inline|
	inline := OrderedCollection withAll:
		{
			#-.
			{'find...(f)' translated. #find}.
			{'find again (g)' translated. #findAgain}.
			{'find and replace ...' translated. #findReplace}.
			{'do/replace again (j)' translated. #again}.
			{'find and replace all' translated. #findAndReplaceAll}
		}.
	^ aMenu 
		addList: inline;
		yourself