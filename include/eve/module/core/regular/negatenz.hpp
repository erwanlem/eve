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
#include <eve/module/core/regular/signnz.hpp>


namespace eve
{
  template<typename Options>
  struct negatenz_t : elementwise_callable<negatenz_t, Options, pedantic_option>
  {
    template<value T,  value U>
    constexpr EVE_FORCEINLINE common_value_t<T, U> operator()(T a, U b) const
    { return EVE_DISPATCH_CALL(a, b); }

    EVE_CALLABLE_OBJECT(negatenz_t, negatenz_);
  };

//================================================================================================
//! @addtogroup core_arithmetic
//! @{
//!   @var negatenz
//!   @brief Computes the [elementwise](@ref glossary_elementwise) product of the first parameter
//!   by the never zero sign of the second.
//!
//!   **Defined in Header**
//!
//!   @code
//!   #include <eve/module/core.hpp>
//!   @endcode
//!
//!   @groupheader{Callable Signatures}
//!
//!   @code
//!   namespace eve
//!   {
//!      template< eve::value T, eve::value U >
//!      eve::common_value_t<T, U> negatenz(T x, U y) noexcept;
//!   }
//!   @endcode
//!
//!   **Parameters**
//!
//!     * `x`, `y`:  [arguments](@ref eve::value).
//!
//!   **Return value**
//!
//!      The [elementwise](@ref glossary_elementwise) product of the first parameter
//!      by the never zero sign of the second is returned.
//!
//!  @groupheader{Example}
//!
//!  @godbolt{doc/core/negatenz.cpp}
//!
//!  @groupheader{Semantic Modifiers}
//!
//!   * Masked Call
//!
//!     The call `eve::negatenz[mask](x, ...)` provides a masked
//!     version of `negatenz` which is
//!     equivalent to `if_else(mask, negatenz(x, ...), x)`
//!
//! @}
//================================================================================================
 inline constexpr auto negatenz = functor<negatenz_t>;

  namespace detail
  {
    template<typename T, typename U, callable_options O>
    EVE_FORCEINLINE constexpr common_value_t<T, U>
    negatenz_(EVE_REQUIRES(cpu_), O const &o, T const &aa,  U const &bb) noexcept
    {
      using r_t = common_value_t<T, U>;
      r_t a = r_t(aa);
      r_t b = r_t(bb);
      if constexpr( signed_value<T> )
        return a * signnz[o](b);
      else
        return a;
    }
  }
}
