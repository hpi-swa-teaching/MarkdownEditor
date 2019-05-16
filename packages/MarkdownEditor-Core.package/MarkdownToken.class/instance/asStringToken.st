converting
asStringToken

	^ MarkdownString new
			content: self content;
			position: self position;
			yourself