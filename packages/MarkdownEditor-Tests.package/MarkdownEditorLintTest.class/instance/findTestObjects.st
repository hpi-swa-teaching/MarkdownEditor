Utils
findTestObjects

	^ testObjects ifNil: [
		| objects blacklist |
		blacklist := {#WeakSmalltalkParser}.
		
		objects := SystemNavigation default allClasses select: [:x | 
			(x class category beginsWith: 'Markdown') and: (x class category = 'MarkdownEditor-Tests') not and: (blacklist includes: x name) not ].
		
		testObjects := objects collect: [ :aObject | aObject as: SLTestObject]
	]