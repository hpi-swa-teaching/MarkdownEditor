accessing
openingFenceLength

	^ (self firstLine asString select: [:character | character = $`]) size