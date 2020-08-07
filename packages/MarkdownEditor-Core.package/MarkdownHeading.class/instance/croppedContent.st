export
croppedContent

	| index |
	index := self content indexOf: Character space.
	^ (self content copyFrom: index + 1 to: (self content size)) asText