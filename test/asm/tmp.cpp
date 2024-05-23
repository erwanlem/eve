#include <eve/module/core.hpp>

auto func_abs(eve::wide<signed char> a0) {
    return eve::abs(a0);
}
auto func_agm(eve::wide<float> a0, eve::wide<float> a1) {
    return eve::agm(a0, a1);
}
auto func_average(eve::wide<signed char> a0, eve::wide<signed char> a1) {
    return eve::average(a0, a1);
}
auto func_add(eve::wide<signed char> a0, eve::wide<signed char> a1) {
    return eve::add(a0, a1);
}
auto func_ceil(eve::wide<float> a0) {
    return eve::ceil(a0);
}
auto func_clamp(eve::wide<float> a0, eve::wide<float> a1, eve::wide<float> a2) {
    return eve::clamp(a0, a1, a2);
}
auto func_conj(eve::wide<float> a0) {
    return eve::conj(a0);
}
auto func_copysign(eve::wide<float> a0, eve::wide<float> a1) {
    return eve::copysign(a0, a1);
}
auto func_dec(eve::wide<std::int8_t> a0) {
    return eve::dec(a0);
}
auto func_dot(eve::wide<int16_t, eve::fixed<4>> a0, eve::wide<int16_t, eve::fixed<4>> a1) {
    return eve::dot(a0, a1);
}
auto func_fdim(eve::wide<std::int8_t> a0, eve::wide<std::int8_t> a1) {
    return eve::fdim(a0, a1);
}
auto func_floor(eve::wide<float, eve::fixed<8>> a0) {
    return eve::floor(a0);
}
auto func_frac(eve::wide<float, eve::fixed<8>> a0) {
    return eve::frac(a0);
}
auto func_max(eve::wide<signed char> a0, eve::wide<signed char> a1) {
    return eve::max(a0, a1);
}
auto func_div(eve::wide<signed char> a0, eve::wide<signed char> a1) {
    return eve::div(a0, a1);
}
auto func_is_nan(eve::wide<signed char> a0) {
    return eve::is_nan(a0);
}
auto func_dist(eve::wide<signed char> a0, eve::wide<signed char> a1) {
    return eve::dist(a0, a1);
}
auto func_bit_reverse(eve::wide<signed char> a0) {
    return eve::bit_reverse(a0);
}
auto func_bit_xor(eve::wide<signed char> a0, eve::wide<signed char> a1, eve::wide<signed char> a2) {
    return eve::bit_xor(a0, a1, a2);
}
auto func_bit_and(eve::wide<signed char> a0, eve::wide<signed char> a1, eve::wide<signed char> a2) {
    return eve::bit_and(a0, a1, a2);
}
auto func_bit_ornot(eve::wide<signed char> a0, eve::wide<signed char> a1, eve::wide<signed char> a2) {
    return eve::bit_ornot(a0, a1, a2);
}
auto func_is_real(eve::wide<signed char> a0) {
    return eve::is_real(a0);
}
auto func_is_positive(eve::wide<signed char> a0) {
    return eve::is_positive(a0);
}
auto func_min(eve::wide<signed char> a0, eve::wide<signed char> a1) {
    return eve::min(a0, a1);
}
auto func_mul(eve::wide<signed char> a0, eve::wide<signed char> a1) {
    return eve::mul(a0, a1);
}
auto func_rem(eve::wide<signed char> a0, eve::wide<signed char> a1) {
    return eve::rem(a0, a1);
}
