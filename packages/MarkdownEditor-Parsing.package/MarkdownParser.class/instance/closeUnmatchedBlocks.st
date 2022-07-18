phase 2
closeUnmatchedBlocks

	"finalize and close all unmatched blocks"
	"tip and oldTip remain on the container of the last closed block"
	| parent |
	self state allBlocksClosed 
		ifFalse: [[self state oldTip == self state lastMatchedContainer] 
					whileFalse: [parent := self state oldTip container.
								self finalize: self state oldTip.
								self state oldTip: parent].
				self state allBlocksClosed: true]