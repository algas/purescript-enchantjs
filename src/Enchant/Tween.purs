module Enchant.Tween where

import Control.Monad.Eff
import Enchant.Base
import Enchant.EventTarget (EventTarget)


newTween :: forall eff. EnchantParam -> Eff (e :: Enchant | eff) EnchantTween
newTween = ffi ["params", ""] "new enchant.Tween(params);"


instance eventTargetTween :: EventTarget EnchantTween where
    addEventListener = fpi ["base", "type", "listener", ""] "base.addEventListener(type, listener);"
    clearEventListener = fpi ["base", "type", ""] "base.clearEventListener(type);"
    dispatchEvent = fpi ["base", "event", ""] "base.dispatchEvent(event);"
    on = fpi ["base", "type", "listener", ""] "base.on(type, listener);"
    removeEventListener = fpi ["base", "type", "listener", ""] "base.removeEventListener(type, listener);"

