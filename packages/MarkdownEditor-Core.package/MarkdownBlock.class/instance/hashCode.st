accessing
hashCode
	hashCode ifNil: [hashCode:= self content hash].
	^ hashCode