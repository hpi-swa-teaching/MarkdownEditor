clickable
evalBlock

	^[| mime image |
		mime := self url asUrl retrieveContents.
		mime isHTML 
			ifFalse: [
				image := Form fromBinaryStream: mime contentStream.
				image asMorph openInWorld]]
