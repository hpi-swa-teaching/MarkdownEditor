as yet unclassified
tree

	| treeMorphs |
	treeMorphs := outlineWindow 
		submorphs select: [:submorph | submorph class = PluggableTreeMorph].
	^ treeMorphs first