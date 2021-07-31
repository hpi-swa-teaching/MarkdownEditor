tests
testClick

	| items |
	items := self treeItems.
	outlineModel click: editor document.
	self assert: self defaultText equals: editor textMorph textMorph selection