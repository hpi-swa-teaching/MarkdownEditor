building
overallSpecFor: aBuilder

	^ {self layoutFrame -> [self windowSpecFor: aBuilder]. 
		self layoutFrame -> [self treeSpecFor: aBuilder]}