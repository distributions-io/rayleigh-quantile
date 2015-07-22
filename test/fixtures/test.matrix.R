options( digits = 16 )
library( jsonlite )
library( VGAM )

sigma = 1
probs = 0:24 / 25
y = qrayleigh( probs, sigma )

cat( y, sep = ",\n" )

data = list(
	sigma = sigma,
	data = probs,
	expected = y
)


write( toJSON( data, digits = 16, auto_unbox = TRUE ), "./test/fixtures/matrix.json" )
