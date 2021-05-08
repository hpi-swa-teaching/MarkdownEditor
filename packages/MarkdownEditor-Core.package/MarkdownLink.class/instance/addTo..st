clickable
addTo: aText

super addTo: aText.

aText addAttribute:  (PluggableTextAttribute evalBlock: self evalBlock)
   		from: self startPosition
   		to: self endPosition
