accessing
append: aCharacter

	self content: self content, aCharacter asString.
	self count: self count + 1