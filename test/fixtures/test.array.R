options( digits = 16 )
library( jsonlite )


sigma = 1
probs = seq( 0, 1, 0.01 )
y = qrayleigh( probs, sigma )

cat( y, sep = ",\n" )

data = list(
	sigma = sigma,
	data = probs,
	expected = y
)

write( toJSON( data, digits = 16, auto_unbox = TRUE ), "./test/fixtures/array.json" )
