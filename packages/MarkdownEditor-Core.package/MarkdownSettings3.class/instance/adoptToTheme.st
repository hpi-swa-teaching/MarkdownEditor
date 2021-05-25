userInterface
adoptToTheme

	self hasThemeChanged
		ifTrue: [
			"self applyUserInterfaceTheme."
			self submorphs
				do: [:sub | sub applyUserInterfaceTheme].
			self adoptTabsToTheme.
			self adoptBlockStylerToTheme.
			self currentStyleSettings: MarkdownStyleSettings default]