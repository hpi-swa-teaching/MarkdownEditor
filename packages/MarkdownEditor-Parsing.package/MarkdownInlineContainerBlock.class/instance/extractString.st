styling
extractString

	^ String streamContents: [:stringStream | 
		self children do: [:child | 
			stringStream nextPutAll: child extractString]]