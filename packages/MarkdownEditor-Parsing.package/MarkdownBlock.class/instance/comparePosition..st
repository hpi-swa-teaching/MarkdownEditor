comparing
comparePosition: anotherMarkdownBlock

	^ self startPosition = anotherMarkdownBlock startPosition
			and: [
		self endPosition = anotherMarkdownBlock endPosition
			and: [
		self innerStartPosition = anotherMarkdownBlock innerStartPosition]]