module Enchant.Easing where

import Control.Monad.Eff
import Enchant.Base


swing :: Number -> Number -> Number -> Number -> Number
swing = ffi ["t", "b", "c", "d", ""] "enchant.Easing.swing(t, b, c, d);"

easeInQuad :: Number -> Number -> Number -> Number -> Number
easeInQuad = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInQuad(t, b, c, d);"

easeOutQuad :: Number -> Number -> Number -> Number -> Number
easeOutQuad = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeOutQuad(t, b, c, d);"

easeInOutQuad :: Number -> Number -> Number -> Number -> Number
easeInOutQuad = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInOutQuad(t, b, c, d);"

easeInCubic :: Number -> Number -> Number -> Number -> Number
easeInCubic = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInCubic(t, b, c, d);"

easeOutCubic :: Number -> Number -> Number -> Number -> Number
easeOutCubic = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeOutCubic(t, b, c, d);"

easeInOutCubic :: Number -> Number -> Number -> Number -> Number
easeInOutCubic = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInOutCubic(t, b, c, d);"

easeInQuart :: Number -> Number -> Number -> Number -> Number
easeInQuart = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInQuart(t, b, c, d);"

easeOutQuart :: Number -> Number -> Number -> Number -> Number
easeOutQuart = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeOutQuart(t, b, c, d);"

easeInOutQuart :: Number -> Number -> Number -> Number -> Number
easeInOutQuart = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInOutQuart(t, b, c, d);"

easeInQuint :: Number -> Number -> Number -> Number -> Number
easeInQuint = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInQuint(t, b, c, d);"

easeOutQuint :: Number -> Number -> Number -> Number -> Number
easeOutQuint = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeOutQuint(t, b, c, d);"

easeInOutQuint :: Number -> Number -> Number -> Number -> Number
easeInOutQuint = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInOutQuint(t, b, c, d);"

easeInSine :: Number -> Number -> Number -> Number -> Number
easeInSine = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInSine(t, b, c, d);"

easeOutSine :: Number -> Number -> Number -> Number -> Number
easeOutSine = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeOutSine(t, b, c, d);"

easeInOutSine :: Number -> Number -> Number -> Number -> Number
easeInOutSine = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInOutSine(t, b, c, d);"

easeInExpo :: Number -> Number -> Number -> Number -> Number
easeInExpo = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInExpo(t, b, c, d);"

easeOutExpo :: Number -> Number -> Number -> Number -> Number
easeOutExpo = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeOutExpo(t, b, c, d);"

easeInOutExpo :: Number -> Number -> Number -> Number -> Number
easeInOutExpo = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInOutExpo(t, b, c, d);"

easeInCirc :: Number -> Number -> Number -> Number -> Number
easeInCirc = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInCirc(t, b, c, d);"

easeOutCirc :: Number -> Number -> Number -> Number -> Number
easeOutCirc = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeOutCirc(t, b, c, d);"

easeInOutCirc :: Number -> Number -> Number -> Number -> Number
easeInOutCirc = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInOutCirc(t, b, c, d);"

easeInElastic :: Number -> Number -> Number -> Number -> Number
easeInElastic = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInElastic(t, b, c, d);"

easeOutElastic :: Number -> Number -> Number -> Number -> Number
easeOutElastic = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeOutElastic(t, b, c, d);"

easeInOutElastic :: Number -> Number -> Number -> Number -> Number
easeInOutElastic = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInOutElastic(t, b, c, d);"

easeInBack :: Number -> Number -> Number -> Number -> Number
easeInBack = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInBack(t, b, c, d);"

easeOutBack :: Number -> Number -> Number -> Number -> Number
easeOutBack = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeOutBack(t, b, c, d);"

easeInOutBack :: Number -> Number -> Number -> Number -> Number
easeInOutBack = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInOutBack(t, b, c, d);"

easeInBounce :: Number -> Number -> Number -> Number -> Number
easeInBounce = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInBounce(t, b, c, d);"

easeOutBounce :: Number -> Number -> Number -> Number -> Number
easeOutBounce = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeOutBounce(t, b, c, d);"

easeInOutBounce :: Number -> Number -> Number -> Number -> Number
easeInOutBounce = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInOutBounce(t, b, c, d);"
