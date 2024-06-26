#include <eve/module/core.hpp>
#include <eve/wide.hpp>
#include <iostream>

using wide_ft = eve::wide<float, eve::fixed<4>>;

int main()
{
  wide_ft pf = {0.0f, 1.0f, -1.0f, -2.0f};
  wide_ft qf = {1.0f, -1.0f, 0.0f, -2.0f};

  std::cout << "---- simd" << '\n'
            << "<- pf                             = " << pf << '\n'
            << "<- qf                             = " << qf << '\n'
            << "-> is_not_greater(pf, qf)         = " << eve::is_not_greater(pf, qf) << '\n'
            << "-> is_not_greater[almost](pf, qf) = " << eve::is_not_greater[eve::almost](pf, qf) << '\n'
            << "-> is_not_greater[pf > 0](pf, qf) = " << eve::is_not_greater[pf > 0](pf, qf) << '\n';

  float xf = 1.0f;
  float yf = 2.0f;

  std::cout << "---- scalar" << '\n'
            << "<- xf                     = " << xf << '\n'
            << "<- yf                     = " << yf << '\n'
            << "-> is_not_greater(xf, yf) = " << eve::is_not_greater(xf, yf) << '\n';
  return 0;
}
