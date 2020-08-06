initialize
initializeBlockStylerMorphs

	MarkdownEditor blockClasses do:
		[:blockClass | self initializeBlockStylerMorphsFor: blockClass]