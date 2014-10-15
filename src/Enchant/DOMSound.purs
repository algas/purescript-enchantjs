module Enchant.DOMSound where

import Control.Monad.Eff
import Enchant.Base
import Enchant.EventTarget (EventTarget)


newDOMSound :: forall eff. Eff (e :: Enchant | eff) EnchantDOMSound
newDOMSound = ffi [""] "new enchant.DOMSound();"

load :: forall eff. String -> String -> Eff (e :: Enchant | eff) Unit -> Eff (e :: Enchant | eff) Unit -> Eff (e :: Enchant | eff) EnchantDOMSound
load = ffi ["src", "type", "callback", "onerror", ""] "enchant.DOMSound.load(src, type, callback, onerror);"


class DOMSound a where
    getCurrentTime :: forall eff. a -> Eff (e :: Enchant | eff) Number
    setCurrentTime :: forall eff. a -> Number -> Eff (e :: Enchant | eff) Unit
    getDuration :: forall eff. a -> Eff (e :: Enchant | eff) Number
    setDuration :: forall eff. a -> Number -> Eff (e :: Enchant | eff) Unit
    getVolume :: forall eff. a -> Eff (e :: Enchant | eff) Number
    setVolume :: forall eff. a -> Number -> Eff (e :: Enchant | eff) Unit

    clone :: forall eff. a -> Eff (e :: Enchant | eff) Unit
    pause :: forall eff. a -> Eff (e :: Enchant | eff) Unit
    play :: forall eff. a -> Eff (e :: Enchant | eff) Unit
    stop :: forall eff. a -> Eff (e :: Enchant | eff) Unit


instance domSoundSelf :: DOMSound EnchantDOMSound where
    getCurrentTime = ffi ["base", ""] "base.currentTime;"
    setCurrentTime = fpi ["base", "time", ""] "base.currentTime = time;"
    getDuration = ffi ["base", ""] "base.duration;"
    setDuration = fpi ["base", "duration", ""] "base.duration = duration;"
    getVolume = ffi ["base", ""] "base.volume;"
    setVolume = fpi ["base", "volume", ""] "base.volume = volume;"

    clone = fpi ["base", ""] "base.clone();"
    pause = fpi ["base", ""] "base.pause();"
    play = fpi ["base", ""] "base.play();"
    stop = fpi ["base", ""] "base.stop();"


instance eventTargetDOMSound :: EventTarget EnchantDOMSound where
    addEventListener = fpi ["base", "type", "listener", ""] "base.addEventListener(type, listener);"
    clearEventListener = fpi ["base", "type", ""] "base.clearEventListener(type);"
    dispatchEvent = fpi ["base", "event", ""] "base.dispatchEvent(event);"
    on = fpi ["base", "type", "listener", ""] "base.on(type, listener);"
    removeEventListener = fpi ["base", "type", "listener", ""] "base.removeEventListener(type, listener);"
