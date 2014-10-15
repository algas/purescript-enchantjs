module Enchant.Easing where

import Control.Monad.Eff
import Enchant.Base


swing :: forall eff. Number -> Number -> Number -> Number -> Eff (e :: Enchant | eff) Number
swing = ffi ["t", "b", "c", "d", ""] "enchant.Easing.swing(t, b, c, d);"

easeInQuad :: forall eff. Number -> Number -> Number -> Number -> Eff (e :: Enchant | eff) Number
easeInQuad = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInQuad(t, b, c, d);"

easeOutQuad :: forall eff. Number -> Number -> Number -> Number -> Eff (e :: Enchant | eff) Number
easeOutQuad = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeOutQuad(t, b, c, d);"

easeInOutQuad :: forall eff. Number -> Number -> Number -> Number -> Eff (e :: Enchant | eff) Number
easeInOutQuad = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInOutQuad(t, b, c, d);"

easeInCubic :: forall eff. Number -> Number -> Number -> Number -> Eff (e :: Enchant | eff) Number
easeInCubic = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInCubic(t, b, c, d);"

easeOutCubic :: forall eff. Number -> Number -> Number -> Number -> Eff (e :: Enchant | eff) Number
easeOutCubic = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeOutCubic(t, b, c, d);"

easeInOutCubic :: forall eff. Number -> Number -> Number -> Number -> Eff (e :: Enchant | eff) Number
easeInOutCubic = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInOutCubic(t, b, c, d);"

easeInQuart :: forall eff. Number -> Number -> Number -> Number -> Eff (e :: Enchant | eff) Number
easeInQuart = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInQuart(t, b, c, d);"

easeOutQuart :: forall eff. Number -> Number -> Number -> Number -> Eff (e :: Enchant | eff) Number
easeOutQuart = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeOutQuart(t, b, c, d);"

easeInOutQuart :: forall eff. Number -> Number -> Number -> Number -> Eff (e :: Enchant | eff) Number
easeInOutQuart = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInOutQuart(t, b, c, d);"

easeInQuint :: forall eff. Number -> Number -> Number -> Number -> Eff (e :: Enchant | eff) Number
easeInQuint = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInQuint(t, b, c, d);"

easeOutQuint :: forall eff. Number -> Number -> Number -> Number -> Eff (e :: Enchant | eff) Number
easeOutQuint = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeOutQuint(t, b, c, d);"

easeInOutQuint :: forall eff. Number -> Number -> Number -> Number -> Eff (e :: Enchant | eff) Number
easeInOutQuint = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInOutQuint(t, b, c, d);"

easeInSine :: forall eff. Number -> Number -> Number -> Number -> Eff (e :: Enchant | eff) Number
easeInSine = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInSine(t, b, c, d);"

easeOutSine :: forall eff. Number -> Number -> Number -> Number -> Eff (e :: Enchant | eff) Number
easeOutSine = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeOutSine(t, b, c, d);"

easeInOutSine :: forall eff. Number -> Number -> Number -> Number -> Eff (e :: Enchant | eff) Number
easeInOutSine = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInOutSine(t, b, c, d);"

easeInExpo :: forall eff. Number -> Number -> Number -> Number -> Eff (e :: Enchant | eff) Number
easeInExpo = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInExpo(t, b, c, d);"

easeOutExpo :: forall eff. Number -> Number -> Number -> Number -> Eff (e :: Enchant | eff) Number
easeOutExpo = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeOutExpo(t, b, c, d);"

easeInOutExpo :: forall eff. Number -> Number -> Number -> Number -> Eff (e :: Enchant | eff) Number
easeInOutExpo = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInOutExpo(t, b, c, d);"

easeInCirc :: forall eff. Number -> Number -> Number -> Number -> Eff (e :: Enchant | eff) Number
easeInCirc = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInCirc(t, b, c, d);"

easeOutCirc :: forall eff. Number -> Number -> Number -> Number -> Eff (e :: Enchant | eff) Number
easeOutCirc = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeOutCirc(t, b, c, d);"

easeInOutCirc :: forall eff. Number -> Number -> Number -> Number -> Eff (e :: Enchant | eff) Number
easeInOutCirc = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInOutCirc(t, b, c, d);"

easeInElastic :: forall eff. Number -> Number -> Number -> Number -> Eff (e :: Enchant | eff) Number
easeInElastic = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInElastic(t, b, c, d);"

easeOutElastic :: forall eff. Number -> Number -> Number -> Number -> Eff (e :: Enchant | eff) Number
easeOutElastic = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeOutElastic(t, b, c, d);"

easeInOutElastic :: forall eff. Number -> Number -> Number -> Number -> Eff (e :: Enchant | eff) Number
easeInOutElastic = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInOutElastic(t, b, c, d);"

easeInBack :: forall eff. Number -> Number -> Number -> Number -> Eff (e :: Enchant | eff) Number
easeInBack = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInBack(t, b, c, d);"

easeOutBack :: forall eff. Number -> Number -> Number -> Number -> Eff (e :: Enchant | eff) Number
easeOutBack = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeOutBack(t, b, c, d);"

easeInOutBack :: forall eff. Number -> Number -> Number -> Number -> Eff (e :: Enchant | eff) Number
easeInOutBack = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInOutBack(t, b, c, d);"

easeInBounce :: forall eff. Number -> Number -> Number -> Number -> Eff (e :: Enchant | eff) Number
easeInBounce = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInBounce(t, b, c, d);"

easeOutBounce :: forall eff. Number -> Number -> Number -> Number -> Eff (e :: Enchant | eff) Number
easeOutBounce = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeOutBounce(t, b, c, d);"

easeInOutBounce :: forall eff. Number -> Number -> Number -> Number -> Eff (e :: Enchant | eff) Number
easeInOutBounce = ffi ["t", "b", "c", "d", ""] "enchant.Easing.easeInOutBounce(t, b, c, d);"
