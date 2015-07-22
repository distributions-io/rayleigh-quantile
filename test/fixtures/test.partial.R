options( digits = 16 )
library( jsonlite )
library( VGAM )

sigma = 1.5
probs = c( 0, 0.25, 0.5, 0.75, 1 )
y = qrayleigh( probs, sigma )

cat( y, sep = ",\n" )

data = list(
	sigma = sigma,
	data = probs,
	expected = y
)

write( toJSON( data, digits = 16, auto_unbox = TRUE ), "./test/fixtures/partial.json" )
