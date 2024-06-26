#include <eve/wide.hpp>
#include <iostream>

using wide_ft = eve::wide<float, eve::fixed<4>>;
using wide_it = eve::wide<std::int16_t, eve::fixed<4>>;

int main()
{
  wide_ft pf = {-1.0f, 0.0f, -3.0f, -32768.0f};
  wide_it qi = {-1.0f, 2.0f, -3.0f, -32768.0f};

  std::cout << "---- simd" << '\n'
            << "<- pf                               = " << pf << '\n'
            << "-> all(pf)                          = " << eve::all(pf <= 0) << '\n'
            << "-> all[ignore_first(1)](pf > 0.5f)  = " << eve::all[eve::ignore_first(1)](pf > 0.5) << '\n'
            << "<- qi                               = " << qi << '\n'
            << "-> all(qi)                          = " << eve::all(qi <= 0) << '\n';

  float        xf = -0.0f;
  float        yf = -3.0f;

  std::cout << "---- scalar" << '\n'
            << "<- xf      = " << xf << '\n'
            << "-> all(xf) = " << eve::all(xf == 0) << '\n'
            << "<- yf      = " << yf << '\n'
            << "-> all(yf) = " << eve::all(yf == 0) << '\n';
  return 0;
}
