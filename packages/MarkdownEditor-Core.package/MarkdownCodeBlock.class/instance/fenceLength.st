accessing
fenceLength

	^ (self firstLine select: [:character | character = $`]) size