tests - appearance
testChangeTheme

	| theme1 theme2 allignment closeBox |
	allignment := (settings window submorphs select: [:s | s class = AlignmentMorph]) first.
	closeBox := (allignment submorphs select: [:s | s externalName = 'closeBox']) first.
	
	self assert: closeBox target = settings.
	self assert: closeBox actionSelector = #handleCancel.
	
	theme1 := SqueakTheme new.
	theme2 := TrimTheme new.
	theme1 applyTo: settings window asOrderedCollection.
	theme2 applyTo: settings window asOrderedCollection.
	
	allignment := (settings window submorphs select: [:s | s class = AlignmentMorph]) first.
	closeBox := (allignment submorphs select: [:s | s externalName = 'closeBox']) first.
	
	self assert: closeBox target = settings.
	self assert: closeBox actionSelector = #handleCancel
	
	