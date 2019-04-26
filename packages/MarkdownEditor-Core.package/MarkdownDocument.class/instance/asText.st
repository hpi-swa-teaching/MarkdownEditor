converting
asText

	^ self children inject: '' into: [:result :mdBlock | result, mdBlock asText]