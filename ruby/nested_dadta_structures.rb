#represent a real world construct of an oil platform

oil_play = {
	'location' => ['sea','land'],
	'well' => ['multiple','single'],
	'pipeline'=>['riser','length','compressor'],
	'facilities'=>['gas_plant','hydrator','sulphide_remover'],
	'gas_station'=>['small','big'],
}

p oil_play

#print land
p oil_play['location'][1]

#modify compressor into decompressor
oil_play['pipeline'][2] = "decompressor"
p oil_play['pipeline']


#delete small gas stations
oil_play['gas_station'].delete("small")
p oil_play['gas_station']
