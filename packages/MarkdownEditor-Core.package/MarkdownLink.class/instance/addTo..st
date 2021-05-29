clickable
addTo: aText

	super addTo: aText.

	aText addAttribute:  (PluggableTextAttribute evalBlock: self openUrl)
   		from: self startPosition
   		to: self endPosition
