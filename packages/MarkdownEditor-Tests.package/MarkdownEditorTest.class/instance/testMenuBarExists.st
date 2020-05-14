tests - window
testMenuBarExists

	self assert: (window submorphs select: [:each | each class = PluggablePanelMorph]) size > 0