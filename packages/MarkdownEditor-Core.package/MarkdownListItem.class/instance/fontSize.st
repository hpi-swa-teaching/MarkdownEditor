accessing
fontSize

	^ self styleSettings fontSizes at: (self class labels at: (self level min: self maximumLevel))
