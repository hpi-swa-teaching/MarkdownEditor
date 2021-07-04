applying
finalize: aParsingState

	super finalize: aParsingState
	"check for blank lines between childs or subchilds"
	"self children withIndexDo: [:child :index | 
		self isLoose: 
			(index < self children size & child endsWithBlankLine).
			
		self isLoose ifFalse: [
		child children withIndexDo: [:child2 :index2 | 
			self isLoose: 
			((index < self children size) | index2 < child2 children size) 
			& child2 endsWithBlankLine]]]"