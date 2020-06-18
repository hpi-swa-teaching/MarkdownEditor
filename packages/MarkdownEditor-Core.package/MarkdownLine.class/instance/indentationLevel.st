testing
indentationLevel

	 | text |
	
	 text := self content copyReplaceAll: Character tab asString with: self fourSpaces.
	 text := text , '$'.
	 ^ text asString size - text withBlanksTrimmed asString size // 4