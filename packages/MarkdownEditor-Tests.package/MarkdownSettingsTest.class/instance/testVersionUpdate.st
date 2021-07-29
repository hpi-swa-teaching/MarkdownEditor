tests
testVersionUpdate

	| new |
	settings settingsVersion: 0.
	new := MarkdownSettings UniqueInstance.
	
	self assert: new settingsVersion equals: MarkdownSettings settingsVersion.
	self assert: (settings = new) not