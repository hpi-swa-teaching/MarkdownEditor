accessing
addAttributesTo: aText from: start to: end

	self class canChangeFontSize ifTrue: [aText addAttribute: self textAttribute from: start to: end].
	self class canChangeFontColor ifTrue: [aText addAttribute: self colorAttribute from: start to: end].