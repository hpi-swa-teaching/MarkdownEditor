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
			{'convert to html' translated. #convertToHTML}.
			#-.
			{'appearance...' translated. #openSettings}
		}.
	^ entries