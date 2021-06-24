comparing
= aContainerBlock

	| size |
	(size := self children size) = aContainerBlock children size
		ifFalse: [^ false].
	1 to: size do:
		[:index | 
		(self children at: index) = (aContainerBlock children at: index)
			ifFalse: [^ false]].
	^ true
	

	