yellowButtonMenu
addFindReplaceItemsTo: aMenu

	| inline|
	inline := OrderedCollection withAll:
		{
			#-.
			{'find...(f)' translated. #find}.
			{'find again (g)' translated. #findAgain}.
			{'find and replace ...' translated. #findReplace}.
			{'do/replace again (j)' translated. #again}
		}.
	^ aMenu 
		addList: inline;
		add: 'find and replace all' action: [self findAndReplaceAll];
		yourself