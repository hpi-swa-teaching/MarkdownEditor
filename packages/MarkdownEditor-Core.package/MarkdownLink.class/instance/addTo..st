clickable
addTo: aText

	super addTo: aText.

	self validateUrl 
		ifTrue:
		[aText addAttribute:  (PluggableTextAttribute evalBlock: self openUrl)
   			from: self startPosition
   			to: self endPosition]
