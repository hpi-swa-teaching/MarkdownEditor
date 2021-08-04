instance creation
newFrom: listData

	^ self new
		number: (listData at: #start);
		indentation: (listData at: #length);
		copyOrderedState: (listData at: #isOrdered);
		listMarker: (listData at: #marker)