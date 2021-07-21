phase 1
consumeContinuationMarkers

	| lastChild case allMatched|
	allMatched := true. 
	[allMatched and: [(lastChild := self state container lastChild) notNil 
		and: [lastChild isOpen]]]
			whileTrue: [self state container: lastChild.
						case := self state container continue: self state.
						"failed to match - reset container to last matching block"
						case = 1 ifTrue: [self state container: self state container container.
							allMatched := false].
						"reached end of line - no further parsing needed"
						case = 2 ifTrue: [^ self]].	
	self state allBlocksClosed: self state container == self state oldTip.
	self state lastMatchedContainer: self state container.
	self lookForNewBlockStarts