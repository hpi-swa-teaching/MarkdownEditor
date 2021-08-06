tests - menu
testOpenParsingTree

	| outline |
	outline := editor openParsingTree.
	
	self assert: true equals: (World submorphs includes: outline).
	outline delete.
	self deny: (World submorphs includes: outline)