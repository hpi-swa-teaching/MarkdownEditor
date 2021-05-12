clickable
validateUrl

	"[^(Url absoluteFromFileNameOrUrlString: self url) retrieveContents ~= nil]
	on: Error do: [^false]"
	^true