initialize
initializeBlockStylerMorphsFor: aBlockClass

	aBlockClass labels do: [:aClassLabel | 
		| blockStylerMorph |
	
		blockStylerMorph := MarkdownBlockStylerMorph for: aClassLabel 
			with: aBlockClass canChangeFontSize
			and: aBlockClass canChangeFontColor 
			and: aBlockClass blockCategory.
		blockStylerMorph extent: 500 @ 70.
			
		blockStylerMorph addDependent: self.
		self blockStylerMorphs add: blockStylerMorph]