tests
testFindLevelOfHeadingLevels1To6
	
	(Dictionary newFrom: {'#'->1. '##'->2. '###'->3. '####'->4. '#####'->5.
	'######'->6}) keysAndValuesDo: [:string :expectedLevel | | heading |
		heading := MarkdownHeading newFrom: (MarkdownLine newFrom: string).
		self assert: expectedLevel equals: heading level]