morphic ui
applyUserInterfaceTheme

	super applyUserInterfaceTheme.
	self blockStylerMorphs do: [:stylerMorph | stylerMorph adaptToTheme]