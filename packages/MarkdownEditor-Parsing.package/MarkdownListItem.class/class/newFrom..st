instance creation
newFrom: listData

	^ self new
		number: (listData at: #start);
		indentation: (listData at: #length);
		isOrdered: (listData at: #isOrdered);
		listMarker: (listData at: #marker)