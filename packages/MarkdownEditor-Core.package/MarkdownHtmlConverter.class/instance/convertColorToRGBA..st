as yet unclassified
convertColorToRGBA: aColor
	
	| roundedAlpha |
	roundedAlpha := (aColor alpha * 1000) rounded / 1000.0.
		
	 ^ 'rgba(', (255 * aColor red) rounded, ', ', (255 * aColor green) rounded, ', ', (255 * aColor blue) rounded, ', ', roundedAlpha, ')'