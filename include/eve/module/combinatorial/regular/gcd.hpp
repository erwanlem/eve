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
#include <eve/module/core.hpp>

namespace eve
{
template<typename Options>
struct gcd_t : elementwise_callable<gcd_t, Options, raw_option>
{
  template<eve::ordered_value T, ordered_value U>
  constexpr EVE_FORCEINLINE common_value_t<T, U>
  operator()(T v, U w) const noexcept { return EVE_DISPATCH_CALL(v, w); }

  EVE_CALLABLE_OBJECT(gcd_t, gcd_);
};

//================================================================================================
//! @addtogroup combinatorial
//! @{
//!   @var gcd
//!   @brief Computes the greatest common divisor of the inputs.
//!
//!   **Defined in header**
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
//!     template< eve::value T,  eve::value U >
//!     constexpr common_value_t<T, U> gcd(T p, U n) noexcept;
//!   }
//!   @endcode
//!
//!   **Parameters**
//!
//!   `p`, `n`: [ordered values](@ref eve::value).
//!
//!    **Return value**
//!
//!    If both p and n are zero, returns zero. Otherwise, returns the greatest common divisor of |p|
//!    and |n|.
//!
//!    @warning
//!    `p` and `n` can be of any [ordered values](@ref eve::value) type, but when the types are not
//!    integral the greatest common divisor is defined only if `p` and `n` elements are [flint](@ref
//!    eve::is_flint). If any of the arguments is not flint the result is undefined.
//!
//!   **Example**
//!
//!     @godbolt{doc/combinatorial/regular/gcd.cpp}
//!
//! @}
//================================================================================================
inline constexpr auto gcd = functor<gcd_t>;

  namespace detail
  {
    template<typename T, callable_options O>
    constexpr auto gcd_(EVE_REQUIRES(cpu_), O const&, T a, T b)
    {
      if constexpr(O::contains(raw2))
      {
        a = eve::abs(a);
        b = eve::abs(b);
        if constexpr( scalar_value<T> )
        {
          while( b )
          {
            auto r = rem(a, b);
            a      = b;
            b      = r;
          }
          return a;
        }
        else
        {
          auto test = is_nez(b);
          T    r(0);
          while( eve::any(test) )
          {
            r    = rem(a, b);
            a    = if_else(test, b, a);
            test = is_nez(r) && test;
            b    = r;
          }
          return a;
        }
      }
      else
      {
        if constexpr(integral_scalar_value<T>)
        {
          a = eve::abs(a);
          b = eve::abs(b);
          while( b )
          {
            auto r = a % b;
            a      = b;
            b      = r;
          }
          return a;
        }
        else if constexpr(integral_simd_value<T>)
        {
          a           = abs(a);
          b           = abs(b);
          using elt_t = element_type_t<T>;
          if constexpr( sizeof(elt_t) == 8 )
          {
            auto test = is_nez(b);
            T    r(0);
            while( eve::any(test) )
            {
              b    = if_else(test, b, allbits);
              r    = a % b;
              a    = if_else(test, b, a);
              test = test && is_nez(r);
              b    = r;
            }
            return a;
          }
          else if constexpr( sizeof(elt_t) == 4 )
          {
            auto r = gcd[raw](float64(a), float64(b));
            if constexpr( std::is_signed_v<elt_t> ) return int32(r);
            else return uint32(r);
          }
          else if constexpr( sizeof(elt_t) <= 2 )
          {
            auto r = gcd[raw](float32(a), float32(b));
            if constexpr( sizeof(elt_t) == 2 )
            {
              if constexpr( std::is_signed_v<elt_t> ) return int16(r);
              else return uint16(r);
            }
            else
            {
              if constexpr( std::is_signed_v<elt_t> ) return int8(r);
              else return uint8(r);
            }
          }
        }
        else if constexpr(floating_value<T>)
        {
          EVE_ASSERT(eve::all(is_flint(a) && is_flint(b)), "gcd: some entries are not flint");
          a = abs(a);
          b = abs(b);
          if constexpr( scalar_value<T> )
          {
            while( b )
            {
              auto r = rem(a, b);
              a      = b;
              b      = r;
            }
            return a;
          }
          else
          {
            auto test = is_nez(b);
            T    r(0);
            while( eve::any(test) )
            {
              r    = rem(a, b);
              a    = if_else(test, b, a);
              test = is_nez(r) && test;
              b    = r;
            }
            return a;
          }
        }
      }
    }
  }
}
