styling
textAttributes

	^ {(MarkdownClickableImageAttribute newFrom: self path at: self startPosition for: (self completeTextElementFrom: self altText asText)). TextEmphasis underlined}