converting
asStringToken

	^ MarkdownString new
			content: self content;
			startPosition: self startPosition;
			yourself