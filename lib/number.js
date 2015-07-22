'use strict';

// FUNCTIONS //

var ln = Math.log,
	pow = Math.pow,
	sqrt = Math.sqrt;
	

// QUANTILE //

/**
* FUNCTION: quantile( p, sigma )
*	Evaluates the quantile function for a Rayleigh distribution with scale parameter `sigma` at a probability `p`.
*
* @param {Number} p - input value
* @param {Number} sigma - scale parameter
* @returns {Number} evaluated quantile function
*/
function quantile( p, sigma ) {
	if ( p !== p || p < 0 || p > 1 ) {
		return NaN;
	}
	return sigma * sqrt( -ln( pow( 1 - p, 2 ) ) );
} // end FUNCTION quantile()


// EXPORTS //

module.exports = quantile;
