helper
tree

	| treeMorphs |
	treeMorphs := outlineWindow 
		submorphs select: [:submorph | submorph class = PluggableTreeMorph].
	^ treeMorphs first