styling
needToUpdate: aCollectionOfBlocks

 	aCollectionOfBlocks do: [:each | each hasUpdatedLine ifTrue: [^ true]].
	^ false