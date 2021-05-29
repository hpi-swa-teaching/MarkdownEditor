morphic ui
applyUserInterfaceTheme

	self window setProperty: #noUserInterface toValue: true.
	super applyUserInterfaceTheme.
	self blockStylerMorphs do: [:stylerMorph | stylerMorph adaptToTheme].
	self configureCloseButton
	