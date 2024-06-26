//==================================================================================================
/*
  EVE - Expressive Vector Engine
  Copyright : EVE Project Contributors
  SPDX-License-Identifier: BSL-1.0
*/
//==================================================================================================
#pragma once

#include <eve/arch.hpp>
#include <eve/traits/overload.hpp>
#include <eve/module/core/decorator/core.hpp>
#include <eve/module/combinatorial/regular/gcd.hpp>
#include <eve/module/core.hpp>
#include <eve/traits/common_value.hpp>
#include <eve/as_element.hpp>

namespace eve
{
  template<typename Options>
  struct lcm_t : elementwise_callable<lcm_t, Options>
  {
    template<eve::value T, eve::value U>
    constexpr EVE_FORCEINLINE
    common_value_t<T, U> operator()(T v, U w) const noexcept { return EVE_DISPATCH_CALL(v, w); }

    EVE_CALLABLE_OBJECT(lcm_t, lcm_);
  };

//================================================================================================
//! @addtogroup combinatorial
//! @{
//!   @var lcm
//!   @brief Computes the least common multiple of the inputs.
//!
//!   **Defined in Header**
//!
//!   @code
//!   #include <eve/module/combinatorial.hpp>
//!   @endcode
//!
//!   @groupheader{Callable Signatures}
//!
//!   @code
//!   namespace eve
//!   {
//!      template< eve::ordered_value T,  eve::ordered_value U >
//!      constexpr T lcm(T p, U n) noexcept;
//!   }
//!   @endcode
//!
//!   **Parameters**
//!
//!   `p`, `n`: [ordered arguments](@ref eve::value).
//!
//!    **Return value**
//!
//!    Returns the least common multiple of |p| and |n|.
//!
//!    @warning
//!    `p` and `n` can be of any [ordered values](@ref eve::value) type, but when the types are not
//!    integral the least common multiple is defined only if `p` and `n` elements are [flint](@ref
//!    eve::is_flint). If any of the arguments is not flint the result is undefined.
//!
//!  @groupheader{Example}
//!
//!     @godbolt{doc/combinatorial/regular/lcm.cpp}
//!  @}
//================================================================================================
  inline constexpr auto lcm = functor<lcm_t>;

  namespace detail
  {
    template<typename T, callable_options O>
    constexpr T lcm_(EVE_REQUIRES(cpu_), O const&, T a, T b)
    {
      EVE_ASSERT(eve::all(is_flint(a) && is_flint(b)), "eve::lcm: some entries are not flint");
      a = eve::abs(a);
      b = eve::abs(b);
      if constexpr( scalar_value<T> )
      {
        if( !b || !a ) return T(0);
        else return b / gcd(a, b) * a;
      }
      else return a * (b / gcd(a, if_else(b, b, eve::one)));
    }
  }
}
