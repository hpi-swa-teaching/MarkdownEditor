as yet unclassified
addAttributesTo: aText

	self class canChangeFontSize ifTrue: [aText addAttribute: self textAttribute].
	self class canChangeFontColor ifTrue: [aText addAttribute: self colorAttribute].