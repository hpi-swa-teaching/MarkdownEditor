tests - menu
testYellowButtonMenuExists

	| textMorph menu items|
	textMorph := window submorphs
				detect: [:each | each isKindOf: PluggableTextMorphPlus]
				ifNone: [self error: 'No yellowButtonMenu found.'].
	menu := textMorph getMenu: false.
	items := editor yellowButtonMenuItems reject: [:each| each isSymbol].
	self assert: items size equals: menu items size
