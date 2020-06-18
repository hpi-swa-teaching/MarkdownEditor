accessing
editor

	^ self dependents detect: [ :each | each isKindOf: PluggableTextMorphPlus ]
	