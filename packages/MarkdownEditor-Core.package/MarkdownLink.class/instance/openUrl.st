clickable
openUrl

	^[| mime image |
		mime := (Url absoluteFromFileNameOrUrlString: self url) retrieveContents.
		mime isHTML 
			ifFalse: [
				image := Form fromBinaryStream: mime contentStream.
				image asMorph openInWorld]]
