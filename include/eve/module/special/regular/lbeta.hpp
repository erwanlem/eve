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
#include <eve/module/special/regular/log_abs_gamma.hpp>
#include <eve/traits/common_value.hpp>

namespace eve
{
template<typename Options>
struct lbeta_t : elementwise_callable<lbeta_t, Options>
{
  template<eve::floating_ordered_value T0, eve::floating_ordered_value T1>
  EVE_FORCEINLINE constexpr
  eve::common_value_t<T0, T1> operator()(T0 a, T1 b) const  noexcept { return EVE_DISPATCH_CALL(a, b); }

  EVE_CALLABLE_OBJECT(lbeta_t, lbeta_);
};

//================================================================================================
//! @addtogroup special
//! @{
//!   @var lbeta
//!   @brief Computes the natural logarithm of the beta function.
//!
//!   **Defined in header**
//!
//!   @code
//!   #include <eve/module/special.hpp>
//!   @endcode
//!
//!   @groupheader{Callable Signatures}
//!
//!   @code
//!   namespace eve
//!   {
//!      template< eve::floating_ordered_value T, eve::floating_ordered_value U >
//!      auto lbeta(T x,U y) noexcept;
//!   }
//!   @endcode
//!
//!   **Parameters**
//!
//!     `x`, `y`:  [strictly positive real floating argument](@ref eve::floating_ordered_value).
//!
//!   **Return value**
//!
//!  @godbolt{doc/special/regular/lbeta.cpp}
//!
//!
//! @}
//================================================================================================
 inline constexpr auto lbeta = functor<lbeta_t>;

  namespace detail
  {
    template< typename T0, typename T1, callable_options O>
    constexpr EVE_FORCEINLINE
    eve::common_value_t<T0, T1> lbeta_(EVE_REQUIRES(cpu_), O const&, T0 const& aa0,  T1 const & aa1)
    {
      using r_t = common_value_t<T0, T1>;
      r_t a1(aa1);
      r_t a0(aa0);
      auto y = a0 + a1;
      return log_abs_gamma(a0) + log_abs_gamma(a1) - log_abs_gamma(y);
    }
  }
}
