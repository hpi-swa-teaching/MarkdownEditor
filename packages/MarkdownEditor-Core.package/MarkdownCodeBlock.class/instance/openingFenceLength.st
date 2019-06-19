accessing
openingFenceLength

	^ (self firstLine select: [:character | character = $`]) size