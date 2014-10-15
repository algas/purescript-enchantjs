module Enchant.EventTarget where

import Control.Monad.Eff
import Enchant.Base


newEventTarget :: forall eff. Eff (e :: Enchant | eff) EnchantEventTarget
newEventTarget = ffi [""] "new enchant.EventTarget();"


class EventTarget a where
    addEventListener :: forall eff. a -> String -> Eff (e :: Enchant | eff) Unit -> Eff (e :: Enchant | eff) Unit
    clearEventListener :: forall eff. a -> String -> Eff (e :: Enchant | eff) Unit
    dispatchEvent :: forall eff. a -> EnchantEvent -> Eff (e :: Enchant | eff) Unit
    on :: forall eff. a -> EnchantEvent -> Eff (e :: Enchant | eff) Unit -> Eff (e :: Enchant | eff) Unit
    removeEventListener :: forall eff. a -> EnchantEvent -> Eff (e :: Enchant | eff) Unit -> Eff (e :: Enchant | eff) Unit


instance eventTargetSelf :: EventTarget EnchantEventTarget where
    addEventListener = fpi ["base", "type", "listener", ""] "base.addEventListener(type, listener);"
    clearEventListener = fpi ["base", "type", ""] "base.clearEventListener(type);"
    dispatchEvent = fpi ["base", "event", ""] "base.dispatchEvent(event);"
    on = fpi ["base", "type", "listener", ""] "base.on(type, listener);"
    removeEventListener = fpi ["base", "type", "listener", ""] "base.removeEventListener(type, listener);"
