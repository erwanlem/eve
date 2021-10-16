//==================================================================================================
/**
  EVE - Expressive Vector Engine
  Copyright : EVE Contributors & Maintainers
  SPDX-License-Identifier: MIT
**/
//==================================================================================================

#include "unit/algo/algo_test.hpp"

#include <eve/algo/views/convert.hpp>
#include <eve/algo/views/zip.hpp>

#include "unit/algo/udt.hpp"

TTS_CASE("convert zip iter")
{
  std::vector<int> const   v{1, 2, 3, 4};
  std::vector<std::int8_t> c{'a', 'b', 'c', 'd'};

  using v_it = std::vector<int>::const_iterator;
  using c_it = std::vector<std::int8_t>::iterator;
  using c_to_v = eve::algo::views::converting_iterator<c_it, int>;

  using zip_v_c_to_v          = eve::algo::views::zip_iterator<v_it, c_to_v>;
  using zip_v_c_to_v_as_point = eve::algo::views::converting_iterator<zip_v_c_to_v, udt::point2D>;

  // tuple and point
  {
    auto zipped = eve::algo::views::zip(v.begin(), c.begin());
    auto as_int_int = eve::algo::views::convert(zipped, eve::as<kumi::tuple<int, int>>{});
    TTS_TYPE_IS(decltype(as_int_int), zip_v_c_to_v);

    // As product
    auto as_point2D = eve::algo::views::convert(zipped, eve::as<udt::point2D>{});
    TTS_TYPE_IS(decltype(as_point2D), zip_v_c_to_v_as_point);
  }

  // Line
  {
    using expected = eve::algo::views::converting_iterator<
      eve::algo::views::zip_iterator<v_it,c_to_v,v_it,v_it>,
      udt::line2D
    >;

    auto actual1 = eve::algo::views::convert(
      eve::algo::views::zip(v.begin(), c.begin(), v.begin(), v.begin()), eve::as<udt::line2D>{}
    );
    TTS_TYPE_IS(decltype(actual1), expected);

#if 0  // FIX-918
    auto actual2 = eve::algo::views::convert(
      eve::algo::views::zip(
        eve::algo::views::convert(eve::algo::views::zip(v, c), eve::as<udt::point2D>{}),
        eve::algo::views::convert(eve::algo::views::zip(v, v), eve::as<udt::point2D>{})
      ),
      eve::as<udt::line2D>{});
    TTS_TYPE_IS(decltype(actual2), expected);
#endif
  }
};

TTS_CASE("convert zip range")
{
  std::vector<int> const   v{1, 2, 3, 4};
  std::vector<std::int8_t> c{'a', 'b', 'c', 'd'};

  using v_ref = eve::algo::range_ref_wrapper<std::vector<int> const>;
  using c_ref = eve::algo::range_ref_wrapper<std::vector<std::int8_t>>;
  using c_to_v = eve::algo::views::converting_range<c_ref, int>;

  using zip_v_c_to_v          = eve::algo::views::zip_range<v_ref, c_to_v>;
  using zip_v_c_to_v_as_point = eve::algo::views::converting_range<zip_v_c_to_v, udt::point2D>;

  // tuple and point
  {
    auto zipped = eve::algo::views::zip(v, c);
    auto as_int_int = eve::algo::views::convert(zipped, eve::as<kumi::tuple<int, int>>{});
    TTS_TYPE_IS(decltype(as_int_int), zip_v_c_to_v);

    // As product
    auto as_point2D = eve::algo::views::convert(zipped, eve::as<udt::point2D>{});
    TTS_TYPE_IS(decltype(as_point2D), zip_v_c_to_v_as_point);
  }

  // Line
  {
    using expected = eve::algo::views::converting_range<
      eve::algo::views::zip_range<v_ref,c_to_v,v_ref,v_ref>,
      udt::line2D
    >;

    auto actual1 = eve::algo::views::convert(
      eve::algo::views::zip(v, c, v, v), eve::as<udt::line2D>{}
    );
    TTS_TYPE_IS(decltype(actual1), expected);

#if 0  // FIX-918
    auto actual2 = eve::algo::views::convert(
      eve::algo::views::zip(
        eve::algo::views::convert(eve::algo::views::zip(v, c), eve::as<udt::point2D>{}),
        eve::algo::views::convert(eve::algo::views::zip(v, v), eve::as<udt::point2D>{})
      ),
      eve::as<udt::line2D>{});
    TTS_TYPE_IS(decltype(actual2), expected);
#endif
  }
};
