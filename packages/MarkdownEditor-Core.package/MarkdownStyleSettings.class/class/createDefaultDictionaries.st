constants
createDefaultDictionaries

	| dictionaries |
	dictionaries := OrderedCollection with: Dictionary new with: Dictionary new.
	MarkdownEditor blockClasses do:
		[:blockClass | blockClass labels doWithIndex: 
			[:label :index | dictionaries first at: label put: (blockClass defaultFontSizes at: index).
						     dictionaries second at: label put: (blockClass defaultFontColors at: index)]].
	^ dictionaries