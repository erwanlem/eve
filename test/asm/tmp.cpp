#include <eve/module/core.hpp>

auto func_ceil_0(eve::wide<float> a0) {
    return eve::ceil(a0);
}
auto func_ceil_1(eve::wide<char> a0) {
    return eve::ceil(a0);
}
auto func_ceil_2(eve::wide<double> a0) {
    return eve::ceil(a0);
}
auto func_ceil_3(eve::wide<int> a0) {
    return eve::ceil(a0);
}
auto func_abs_4(eve::wide<float> a0) {
    return eve::abs(a0);
}
auto func_abs_5(eve::wide<signed char> a0) {
    return eve::abs(a0);
}
auto func_abs_6(eve::wide<int> a0) {
    return eve::abs(a0);
}
auto func_abs_7(eve::wide<int16_t, eve::fixed<2>> a0) {
    return eve::abs(a0);
}
auto func_clamp_8(eve::wide<float> a0, eve::wide<float> a1, eve::wide<float> a2) {
    return eve::clamp(a0, a1, a2);
}
auto func_clamp_9(eve::wide<double> a0, eve::wide<double> a1, eve::wide<double> a2) {
    return eve::clamp(a0, a1, a2);
}
auto func_clamp_10(eve::wide<int> a0, eve::wide<int> a1, eve::wide<int> a2) {
    return eve::clamp(a0, a1, a2);
}
auto func_dist_11(eve::wide<float> a0, eve::wide<float> a1) {
    return eve::dist(a0, a1);
}
auto func_dist_12(eve::wide<int> a0, eve::wide<int> a1) {
    return eve::dist(a0, a1);
}
auto func_conj_13(eve::wide<float> a0) {
    return eve::conj(a0);
}
auto func_conj_14(eve::wide<double> a0) {
    return eve::conj(a0);
}
auto func_copysign_15(eve::wide<float> a0, eve::wide<float> a1) {
    return eve::copysign(a0, a1);
}
auto func_add_16(eve::wide<float> a0, eve::wide<float> a1) {
    return eve::add(a0, a1);
}
auto func_average_17(eve::wide<float> a0, eve::wide<float> a1) {
    return eve::average(a0, a1);
}
auto func_average_18(eve::wide<signed char> a0, eve::wide<signed char> a1) {
    return eve::average(a0, a1);
}
auto func_average_19(eve::wide<char> a0, eve::wide<char> a1) {
    return eve::average(a0, a1);
}
auto func_average_20(eve::wide<double> a0, eve::wide<double> a1) {
    return eve::average(a0, a1);
}
auto func_average_21(eve::wide<int> a0, eve::wide<int> a1) {
    return eve::average(a0, a1);
}
auto func_agm_22(eve::wide<float> a0, eve::wide<float> a1) {
    return eve::agm(a0, a1);
}
