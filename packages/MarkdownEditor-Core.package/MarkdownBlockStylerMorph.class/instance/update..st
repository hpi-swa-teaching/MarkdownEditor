changing
update: aColor

	self styleSettings fontColors at: self classLabel text put: aColor.
	self changed: self
	