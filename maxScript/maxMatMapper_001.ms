select $OP_*
modPanel.addModToSelection (Unwrap_UVW ()) ui:off
theObjects = $OP_* as array
for o in theObjects do	
(	o.material = standardMaterial name:("Mat_"+o.name)
	o.material.Diffuse = color 240 240 240
	o.material.ambient = color 240 240 240
	o.material.opacitymap = bitmaptexture filename:(o.name+".jpg") name:("Map_"+o.name)
	o.material.opacitymap.coords.realWorldScale = off
)