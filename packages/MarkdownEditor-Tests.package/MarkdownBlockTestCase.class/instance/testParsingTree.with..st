running
testParsingTree: parsingTree with: aDictionary

	"{variable_name -> value. children -> {{...}. {...}}}"
	aDictionary keysAndValuesDo: [:key :value | 
		key = #children 
		ifTrue: [value withIndexDo: [:childDictionary :index | 
				   self testParsingTree: (parsingTree children at: index) with: childDictionary]]
		ifFalse: [self assert: value equals: (parsingTree perform: key)]]