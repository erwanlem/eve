#include <eve/module/core.hpp>

auto func_abs(eve::wide<float> a0) {
    return eve::abs(a0);
}
auto func_abs(eve::wide<signed char> a0) {
    return eve::abs(a0);
}
