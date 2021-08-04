clickable
setUp

	attribute := MarkdownClickableImageAttribute newFrom: 'www.hpi.de' at: 1 for: '![HPI](www.hpi.de)'.
	editor := MarkdownEditor new.
	editor pluggableTextMorph: (PluggableTextMorph new setText: '![HPI](www.hpi.de)' asText) 