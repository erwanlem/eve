#include <eve/module/math.hpp>
#include <eve/wide.hpp>
#include <iostream>
#include <iomanip>

using wide_ft = eve::wide<float>;
using wide_dt = eve::wide<double>;

int main()
{
  wide_ft wxf;
  wide_dt wxd;

  std::cout << "---- simd"  << std::setprecision(9) << std::endl
            << "-> two_o_3(as<wide_ft>())                 = " << eve::two_o_3(eve::as<wide_ft>())                << std::endl
            << "-> two_o_3(as(wxf))                       = " << eve::two_o_3(eve::as(wxf))                      << std::endl
            << "-> two_o_3[upward](as<wide_ft>())         = " << eve::two_o_3[eve::upward](eve::as<wide_ft>())   << std::endl
            << "-> two_o_3[upward](as(wxf))               = " << eve::two_o_3[eve::upward](eve::as(wxf))         << std::endl
            << "-> two_o_3[downward](as<wide_ft>())       = " << eve::two_o_3[eve::downward](eve::as<wide_ft>()) << std::endl
            << "-> two_o_3[downward](as(wxf))             = " << eve::two_o_3[eve::downward](eve::as(wxf))       << std::endl
            << std::setprecision(17)
            << "-> two_o_3(as<wide_dt>())           = " << eve::two_o_3(eve::as<wide_dt>())                << std::endl
            << "-> two_o_3(as(wxd))                 = " << eve::two_o_3(eve::as(wxd))                      << std::endl
            << "-> two_o_3[upward](as<wide_dt>())   = " << eve::two_o_3[eve::upward](eve::as<wide_dt>())   << std::endl
            << "-> two_o_3[upward](as(wxd))         = " << eve::two_o_3[eve::upward](eve::as(wxd))         << std::endl
            << "-> two_o_3[downward](as<wide_dt>()) = " << eve::two_o_3[eve::downward](eve::as<wide_dt>()) << std::endl
            << "-> two_o_3[downward](as(wxd))       = " << eve::two_o_3[eve::downward](eve::as(wxd))       << std::endl;

  float        xf;
  double       xd;

  std::cout << "---- scalar" << std::endl
            << "-> two_o_3(as<float>())             = " << eve::two_o_3(eve::as(float())) << std::endl
            << "-> two_o_3(as<xf))                  = " << eve::two_o_3(eve::as(xf))      << std::endl
            << "-> two_o_3(as<double>())            = " << eve::two_o_3(eve::as(double()))<< std::endl
            << "-> two_o_3(as<xd))                  = " << eve::two_o_3(eve::as(xd))      << std::endl;

  return 0;
}
