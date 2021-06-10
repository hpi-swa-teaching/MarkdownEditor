new inline parsing
processInnerEmphasisFrom: aRawString

	"for parsing strings without links, or other stuff which could interfere"
	| stack1 stack2 singleCollection doubleCollection |
	
	stack1 := Stack new.
	stack2 := Stack new.
	singleCollection := OrderedCollection new.
	doubleCollection := OrderedCollection new.
	
	aRawString doWithIndex: [:c :i | 
		(c = $*)
			ifTrue: [
				(stack1 top = i - 1)
					ifTrue: [stack1 pop. 
							stack2 push: i - 1]
					ifFalse: [stack1 push: i]]].
	^ {stack1.stack2}