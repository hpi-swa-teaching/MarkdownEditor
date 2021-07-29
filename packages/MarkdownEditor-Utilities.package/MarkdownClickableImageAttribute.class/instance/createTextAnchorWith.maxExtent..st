accessing
createTextAnchorWith: aBinaryStream maxExtent: aPoint
	
	|image newSize|
	image := Form fromBinaryStream: aBinaryStream.
	newSize := aPoint x min: image extent x.
	image := image scaledToSize: newSize - 10.
	^ TextAnchor new 
		anchoredMorph: image;
		yourself