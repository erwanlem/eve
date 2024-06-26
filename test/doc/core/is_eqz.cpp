#include <eve/module/core.hpp>
#include <eve/wide.hpp>
#include <iostream>

using wide_ft = eve::wide<float, eve::fixed<4>>;

int main()
{
  wide_ft pf = {0.0f, 1.0f, -1.0f, -0.0f};

  std::cout << "---- simd" << '\n'
            << "<- pf         = " << pf << '\n'
            << "-> is_eqz(pf) = " << eve::is_eqz(pf) << '\n'
            << "-> is_eqz[eve::is_positive(pf)](pf) = " << eve::is_eqz[eve::is_positive(pf)](pf) << '\n';
  return 0;
}
