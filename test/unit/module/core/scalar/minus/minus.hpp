//==================================================================================================
/**
  EVE - Expressive Vector Engine
  Copyright 2018 Joel FALCOU

  Licensed under the MIT License <http://opensource.org/licenses/MIT>.
  SPDX-License-Identifier: MIT
**/
//==================================================================================================
#ifndef MINUS_HPP
#define MINUS_HPP

#include <eve/function/scalar/minus.hpp>
#include <tts/tts.hpp>
#include <tts/tests/relation.hpp>

TTS_CASE( "Check eve::minus behavior" )
{
  TTS_EQUAL( eve::minus(Type{0},Type{0}), Type{0});
  TTS_EQUAL( eve::minus(Type{2},Type{1}), Type{1});
  TTS_EQUAL( eve::minus(Type{1},Type{0}), Type{1});
  TTS_EQUAL( eve::minus(Type{1},Type{1}), Type{0});
}

#endif
