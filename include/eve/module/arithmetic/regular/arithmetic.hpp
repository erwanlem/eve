//==================================================================================================
/**
  EVE - Expressive Vector Engine
  Copyright : EVE Contributors & Maintainers
  SPDX-License-Identifier: MIT
**/
//==================================================================================================
#pragma once

#include <eve/module/arithmetic/regular/abs.hpp>
#include <eve/module/arithmetic/regular/absmax.hpp>
#include <eve/module/arithmetic/regular/absmin.hpp>
#include <eve/module/arithmetic/regular/add.hpp>
#include <eve/module/arithmetic/regular/agm.hpp>
#include <eve/module/arithmetic/regular/average.hpp>
#include <eve/module/arithmetic/regular/binarize.hpp>
#include <eve/module/arithmetic/regular/binarize_not.hpp>
#include <eve/module/arithmetic/regular/bit_ceil.hpp>
#include <eve/module/arithmetic/regular/bit_floor.hpp>
#include <eve/module/arithmetic/regular/ceil.hpp>
#include <eve/module/arithmetic/regular/clamp.hpp>
#include <eve/module/arithmetic/regular/copysign.hpp>
#include <eve/module/arithmetic/regular/dec.hpp>
#include <eve/module/arithmetic/regular/dist.hpp>
#include <eve/module/arithmetic/regular/div.hpp>
#include <eve/module/arithmetic/regular/epsilon.hpp>
#include <eve/module/arithmetic/regular/exponent.hpp>
#include <eve/module/arithmetic/regular/fam.hpp>
#include <eve/module/arithmetic/regular/fanm.hpp>
#include <eve/module/arithmetic/regular/fdim.hpp>
#include <eve/module/arithmetic/regular/floor.hpp>
#include <eve/module/arithmetic/regular/fma.hpp>
#include <eve/module/arithmetic/regular/fmod.hpp>
#include <eve/module/arithmetic/regular/fms.hpp>
#include <eve/module/arithmetic/regular/fnma.hpp>
#include <eve/module/arithmetic/regular/fnms.hpp>
#include <eve/module/arithmetic/regular/frac.hpp>
#include <eve/module/arithmetic/regular/fracscale.hpp>
#include <eve/module/arithmetic/regular/frexp.hpp>
#include <eve/module/arithmetic/regular/fsm.hpp>
#include <eve/module/arithmetic/regular/fsnm.hpp>
#include <eve/module/arithmetic/regular/hi.hpp>
#include <eve/module/arithmetic/regular/ifrexp.hpp>
#include <eve/module/arithmetic/regular/inc.hpp>
#include <eve/module/arithmetic/regular/is_denormal.hpp>
#include <eve/module/arithmetic/regular/is_equal.hpp>
#include <eve/module/arithmetic/regular/is_eqz.hpp>
#include <eve/module/arithmetic/regular/is_even.hpp>
#include <eve/module/arithmetic/regular/is_finite.hpp>
#include <eve/module/arithmetic/regular/is_flint.hpp>
#include <eve/module/arithmetic/regular/is_gez.hpp>
#include <eve/module/arithmetic/regular/is_gtz.hpp>
#include <eve/module/arithmetic/regular/is_imag.hpp>
#include <eve/module/arithmetic/regular/is_infinite.hpp>
#include <eve/module/arithmetic/regular/is_less_equal.hpp>
#include <eve/module/arithmetic/regular/is_lessgreater.hpp>
#include <eve/module/arithmetic/regular/is_less.hpp>
#include <eve/module/arithmetic/regular/is_lez.hpp>
#include <eve/module/arithmetic/regular/is_ltz.hpp>
#include <eve/module/arithmetic/regular/is_nan.hpp>
#include <eve/module/arithmetic/regular/is_negative.hpp>
#include <eve/module/arithmetic/regular/is_ngez.hpp>
#include <eve/module/arithmetic/regular/is_ngtz.hpp>
#include <eve/module/arithmetic/regular/is_nlez.hpp>
#include <eve/module/arithmetic/regular/is_nltz.hpp>
#include <eve/module/arithmetic/regular/is_normal.hpp>
#include <eve/module/arithmetic/regular/is_not_denormal.hpp>
#include <eve/module/arithmetic/regular/is_not_equal.hpp>
#include <eve/module/arithmetic/regular/is_not_finite.hpp>
#include <eve/module/arithmetic/regular/is_not_flint.hpp>
#include <eve/module/arithmetic/regular/is_not_greater_equal.hpp>
#include <eve/module/arithmetic/regular/is_not_greater.hpp>
#include <eve/module/arithmetic/regular/is_not_imag.hpp>
#include <eve/module/arithmetic/regular/is_not_infinite.hpp>
#include <eve/module/arithmetic/regular/is_not_less_equal.hpp>
#include <eve/module/arithmetic/regular/is_not_less.hpp>
#include <eve/module/arithmetic/regular/is_not_nan.hpp>
#include <eve/module/arithmetic/regular/is_not_real.hpp>
#include <eve/module/arithmetic/regular/is_odd.hpp>
#include <eve/module/arithmetic/regular/is_ordered.hpp>
#include <eve/module/arithmetic/regular/is_positive.hpp>
#include <eve/module/arithmetic/regular/is_pow2.hpp>
#include <eve/module/arithmetic/regular/is_real.hpp>
#include <eve/module/arithmetic/regular/is_unordered.hpp>
#include <eve/module/arithmetic/regular/ldexp.hpp>
#include <eve/module/arithmetic/regular/lerp.hpp>
#include <eve/module/arithmetic/regular/logical_andnot.hpp>
#include <eve/module/arithmetic/regular/logical_notand.hpp>
#include <eve/module/arithmetic/regular/logical_notor.hpp>
#include <eve/module/arithmetic/regular/logical_ornot.hpp>
#include <eve/module/arithmetic/regular/logical_xor.hpp>
#include <eve/module/arithmetic/regular/lohi.hpp>
#include <eve/module/arithmetic/regular/lo.hpp>
#include <eve/module/arithmetic/regular/manhattan.hpp>
#include <eve/module/arithmetic/regular/mantissa.hpp>
#include <eve/module/arithmetic/regular/maxabs.hpp>
#include <eve/module/arithmetic/regular/max.hpp>
#include <eve/module/arithmetic/regular/maxmag.hpp>
#include <eve/module/arithmetic/regular/minabs.hpp>
#include <eve/module/arithmetic/regular/min.hpp>
#include <eve/module/arithmetic/regular/minmag.hpp>
#include <eve/module/arithmetic/regular/minus.hpp>
#include <eve/module/arithmetic/regular/modf.hpp>
#include <eve/module/arithmetic/regular/mul.hpp>
#include <eve/module/arithmetic/regular/nearest.hpp>
#include <eve/module/arithmetic/regular/negabsmax.hpp>
#include <eve/module/arithmetic/regular/negabsmin.hpp>
#include <eve/module/arithmetic/regular/negate.hpp>
#include <eve/module/arithmetic/regular/negatenz.hpp>
#include <eve/module/arithmetic/regular/negmaxabs.hpp>
#include <eve/module/arithmetic/regular/negminabs.hpp>
#include <eve/module/arithmetic/regular/nextafter.hpp>
#include <eve/module/arithmetic/regular/next.hpp>
#include <eve/module/arithmetic/regular/oneminus.hpp>
#include <eve/module/arithmetic/regular/plus.hpp>
#include <eve/module/arithmetic/regular/prev.hpp>
#include <eve/module/arithmetic/regular/rat.hpp>
#include <eve/module/arithmetic/regular/rec.hpp>
#include <eve/module/arithmetic/regular/refine_rec.hpp>
#include <eve/module/arithmetic/regular/remainder.hpp>
#include <eve/module/arithmetic/regular/remdiv.hpp>
#include <eve/module/arithmetic/regular/rem.hpp>
#include <eve/module/arithmetic/regular/rotl.hpp>
#include <eve/module/arithmetic/regular/rotr.hpp>
#include <eve/module/arithmetic/regular/round.hpp>
#include <eve/module/arithmetic/regular/roundscale.hpp>
#include <eve/module/arithmetic/regular/rshl.hpp>
#include <eve/module/arithmetic/regular/rshr.hpp>
#include <eve/module/arithmetic/regular/saturate.hpp>
#include <eve/module/arithmetic/regular/shl.hpp>
#include <eve/module/arithmetic/regular/shr.hpp>
#include <eve/module/arithmetic/regular/sign.hpp>
#include <eve/module/arithmetic/regular/significants.hpp>
#include <eve/module/arithmetic/regular/signnz.hpp>
#include <eve/module/arithmetic/regular/sqr_abs.hpp>
#include <eve/module/arithmetic/regular/sqr.hpp>
#include <eve/module/arithmetic/regular/sqrt.hpp>
#include <eve/module/arithmetic/regular/sub.hpp>
#include <eve/module/arithmetic/regular/trunc.hpp>
#include <eve/module/arithmetic/regular/two_add.hpp>
#include <eve/module/arithmetic/regular/two_prod.hpp>
#include <eve/module/arithmetic/regular/two_split.hpp>
#include <eve/module/arithmetic/regular/ulpdist.hpp>
