yellowButtonMenu
yellowButtonMenuItems

	| entries |
	entries := OrderedCollection withAll:
		{
			{'new' translated.			#createNewInstance}.
			{'open...' translated.		#openFileDialog}.
			{'save' translated.		#saveText}.
			{'save as...' translated.	#saveAsFileDialog}.
			#-.
			{'find...(f)' translated. #find}.
			{'find again (g)' translated. #findAgain}.
			{'find and replace ...' translated. #findReplace}.
			{'do/replace again (j)' translated. #again}.
			{'find and replace all' translated. #findAndReplaceAll}.
			#-.
			{'convert to html' translated. #convertToHTML}.
			#-.
			{'appearance...' translated. #openSettings}
		}.
	^ entries