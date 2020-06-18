level
fontSize

	 self level > 3 ifTrue: [^ self fontSizes at: 3].
	 ^ self fontSizes at: self level
