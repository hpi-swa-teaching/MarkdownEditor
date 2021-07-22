comparing
= anObject
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ self inlines = anObject inlines
		and: [ 
			self innerLine = anObject innerLine
				and: [ 
					self content = anObject content
						and: [ 
							"self container = anObject container
								and: [ "
									self isOpen = anObject isOpen
										and: [ 
											self endPosition = anObject endPosition
												and: [ self startPosition = anObject startPosition and: [ self innerStartPosition = anObject innerStartPosition ] ] ] ] ] ] "]"