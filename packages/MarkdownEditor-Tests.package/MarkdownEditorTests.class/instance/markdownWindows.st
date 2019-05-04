tests - utilities
markdownWindows

	^ SystemWindow
		windowsIn: World
		satisfying: [:window | window label = 'Markdown Editor']