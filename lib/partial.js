'use strict';

// FUNCTIONS //


// PARTIAL //

/**
* FUNCTION: partial( sigma )
*	Partially applies scale parameter `sigma` and returns a function for evaluating the quantile function for a Rayleigh distribution.
*
* @param {Number} sigma - scale parameter
* @returns {Function} quantile function
*/
function partial( sigma ) {

	/**
	* FUNCTION: quantile( p )
	*	Evaluates the quantile function for a Rayleigh distribution.
	*
	* @private
	* @param {Number} p - input value
	* @returns {Number} evaluated quantile function
	*/
	return function quantile( p ) {
		if ( p !== p || p < 0 || p > 1 ) {
			return NaN;
		}
	};
} // end FUNCTION partial()


// EXPORTS //

module.exports = partial;
