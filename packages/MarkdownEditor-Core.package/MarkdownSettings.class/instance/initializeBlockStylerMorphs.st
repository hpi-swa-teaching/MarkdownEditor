initialize-release
initializeBlockStylerMorphs

	MarkdownEditor blockClasses do:
		[:blockClass | self initializeBlockStylerMorphsFor: blockClass]