initialize
initializeBlockStylerMorphs

	MarkdownEditor blockClasses do:
		[:blockClass | blockClass labels do:
			[:classLabel | | blockStylerMorph |
					blockStylerMorph := MarkdownBlockStylerMorph for: classLabel with: blockClass canChangeFontSize 
																	   and: blockClass canChangeFontColor and: blockClass blockCategory.
					blockStylerMorph addDependent: self.
					self blockStylerMorphs add: blockStylerMorph]].