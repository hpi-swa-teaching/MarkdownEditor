accessing
content

	^ self lines inject: '' into: [:content :line | content, line]