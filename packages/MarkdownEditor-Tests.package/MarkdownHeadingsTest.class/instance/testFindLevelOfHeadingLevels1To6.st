tests
testFindLevelOfHeadingLevels1To6
	
	(Dictionary newFrom: {'#'->1. '##'->2. '###'->3. '####'->4. '#####'->5.
	'######'->6}) keysAndValuesDo: [:string :level |
		self assert: (MarkdownHeading newFrom: string) level equals: level]
