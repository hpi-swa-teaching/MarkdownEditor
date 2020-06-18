initialize-release
initializeBlockStylerMorphs

	MarkdownEditor blockClasses do:
		[:blockClass | blockClass labels do:
			[:classLabel | | blockStylerMorph |
					blockStylerMorph := MarkdownBlockStylerMorph for: classLabel.
					blockStylerMorph addDependent: self.
					self blockStylerMorphs add: blockStylerMorph]].
			
	self blockStylerMorphs doWithIndex: [:blockStylerMorph :index | 
		self contentMorph scroller addMorph: (blockStylerMorph position: 20@(index * blockStylerMorph height + 50); yourself)]. 