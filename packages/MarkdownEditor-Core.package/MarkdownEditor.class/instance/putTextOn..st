open / save
putTextOn: aStream

	| text |

	self saveTextInModel.
	text := self pluggableTextMorph text asString.
	
	aStream nextPutAll: text