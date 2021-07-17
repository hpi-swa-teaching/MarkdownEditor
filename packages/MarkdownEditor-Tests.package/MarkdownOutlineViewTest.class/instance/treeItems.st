as yet unclassified
treeItems

	| treeMorphs transformMorph |
	treeMorphs := outlineWindow 
		submorphs select: [:submorph | submorph class = PluggableTreeMorph].
	transformMorph := treeMorphs first submorphs first.
	^ transformMorph submorphs