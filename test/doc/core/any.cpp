#include <eve/module/core.hpp>
#include <iostream>

using wide_ft = eve::wide<float, eve::fixed<4>>;
using wide_it = eve::wide<std::int16_t, eve::fixed<4>>;

int main()
{
  wide_ft pf = { 0.0f, 0.0f, -0.0f, -0.0f};
  wide_it qi = {-1.0f, 02.0f, -3.0f, -0.0f};

  std::cout << "---- simd" << '\n'
            << "<- pf                                = " << pf << '\n'
            << "-> any(pf != 0)                      = " << eve::any(pf != 0) << '\n'
             << "-> any[ignore_first(1)](pf > 0.5f)  = " << eve::any[eve::ignore_first(1)](pf > 0.5f) << '\n'
            << "<- qi                                = " << qi << '\n'
            << "-> any(qi != 0)                      = " << eve::any(qi != 0) << '\n';

  float        xf = -0.0f;
  float        yf = -3.0f;

  std::cout << "---- scalar" << '\n'
            << "<- xf           = " << xf << '\n'
            << "-> any(xf != 0) = " << eve::any(xf != 0) << '\n'
            << "<- yf           = " << yf << '\n'
            << "-> any(yf != 0) = " << eve::any(yf != 0) << '\n';
  return 0;
}
