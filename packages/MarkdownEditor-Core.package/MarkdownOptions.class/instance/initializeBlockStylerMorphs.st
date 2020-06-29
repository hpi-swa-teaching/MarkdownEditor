initialize
initializeBlockStylerMorphs

	MarkdownEditor blockClasses do:
		[:blockClass | blockClass labels do:
			[:classLabel | | blockStylerMorph |
					blockStylerMorph := MarkdownBlockStylerMorph for: classLabel with: blockClass canChangeFontSize and: blockClass canChangeFontColor and: blockClass blockCategory.
					blockStylerMorph addDependent: self.
					self blockStylerMorphs add: blockStylerMorph]].
			
	"self blockStylerMorphs doWithIndex: [:blockStylerMorph :index | 
		self contentMorph scroller addMorph: (blockStylerMorph position: 20@(index * blockStylerMorph height); yourself)]. 
	self contentMorph scroller addMorph: (Morph new color: Color transparent; extent: 450@80; yourself)."