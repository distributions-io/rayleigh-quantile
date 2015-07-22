options( digits = 16 )
library( jsonlite )
library( VGAM )

sigma = 5
probs = seq( 0, 1, 0.01 )
y = qrayleigh( probs, sigma )

cat( y, sep = ",\n" )

data = list(
	sigma = sigma,
	data = probs,
	expected = y
)

write( toJSON( data, digits = 16, auto_unbox = TRUE ), "./test/fixtures/accessor.json" )
