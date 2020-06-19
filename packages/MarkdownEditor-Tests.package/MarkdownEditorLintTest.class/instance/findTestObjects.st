Utils
findTestObjects

	^ testObjects ifNil: [
		| objects |
		objects := SystemNavigation default allClasses.

		objects := objects select: [:x| (x class category beginsWith: 'Markdown') and: (x class category = 'MarkdownEditor-Tests') not ].
		objects := objects collect: [ :aObject |
			aObject as: SLTestObject].
		testObjects := objects
	]