clickable
testIsActingOnClick

	self assert: true equals: (attribute actOnClickFor: editor).
	self assert: 1 equals: attribute position.
	self assert: '![HPI](www.hpi.de)' equals: attribute text