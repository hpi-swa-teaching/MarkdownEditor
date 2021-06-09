initialize
initializeBlockStylerMorphsFor: aBlockClass

	aBlockClass labels do: [:aClassLabel | 
		| blockStylerMorph |
	
		blockStylerMorph := MarkdownBlockStylerMorph for: aClassLabel 
			with: aBlockClass canChangeFontSize
			and: aBlockClass canChangeFontColor 
			and: aBlockClass blockCategory.
		blockStylerMorph extent: self blockStylerMorphExtent.
			
		blockStylerMorph addDependent: self.
		self blockStylerMorphs add: blockStylerMorph]