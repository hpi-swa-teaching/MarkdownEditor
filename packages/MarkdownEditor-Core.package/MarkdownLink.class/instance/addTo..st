clickable
addTo: aText

	super addTo: aText.
	self text: PluggableTextAttribute new.
	aText addAttribute:  (self text evalBlock: self openUrl)
   		from: self startPosition
   		to: self endPosition
