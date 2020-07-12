accessing
blockClasses

	| classes |
	classes := OrderedCollection new.
	MarkdownBlock subclassesDo: [:subclass | 
		subclass subclasses isEmpty
			ifTrue: [classes add: subclass]
			ifFalse: [classes addAll: subclass subclasses]].
	^  classes