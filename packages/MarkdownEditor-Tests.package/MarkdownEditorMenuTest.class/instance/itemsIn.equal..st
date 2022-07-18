helper
itemsIn: anArray equal: other

	anArray class == other class ifFalse: [^ false].
	anArray size = other size ifFalse: [^ false].
	anArray with: other do: [:e1 :e2 |
		(e1 contents = e2 contents) ifFalse: [^ false]].
	^ true