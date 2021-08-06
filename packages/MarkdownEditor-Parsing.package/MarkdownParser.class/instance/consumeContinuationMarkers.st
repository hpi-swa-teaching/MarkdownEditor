phase 1
consumeContinuationMarkers

	| lastChild case allMatched|
	allMatched := true. 
	[allMatched and: [(lastChild := self state container lastChild) notNil 
		and: [lastChild isOpen]]]
			whileTrue: [self state container: lastChild.
						case := self state container continue: self state.
						case = #failedMatch ifTrue: [self state container: self state container container.
							allMatched := false].
						case = #endOfLine ifTrue: [^ self]].	
	self state allBlocksClosed: self state container == self state oldTip.
	self state lastMatchedContainer: self state container.
	self lookForNewBlockStarts