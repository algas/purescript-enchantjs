module Enchant.WebAudioSound where

import Control.Monad.Eff
import Enchant.Base
import Enchant.EventTarget (EventTarget)


newWebAudioSound :: forall eff. Eff (e :: Enchant | eff) EnchantWebAudioSound
newWebAudioSound = ffi [""] "new enchant.DOMSound();"

load :: forall eff. String -> String -> Unit -> Unit -> Eff (e :: Enchant | eff) EnchantDOMSound
load = ffi ["src", "type", "callback", "onerror", ""] "enchant.DOMSound.load(src, type, callback, onerror);"


class WebAudioSound a where
    getCurrentTime :: a -> Number
    setCurrentTime :: forall eff. a -> Number -> Eff (e :: Enchant | eff) Unit
    getDuration :: a -> Number
    setDuration :: forall eff. a -> Number -> Eff (e :: Enchant | eff) Unit
    getVolume :: a -> Number
    setVolume :: forall eff. a -> Number -> Eff (e :: Enchant | eff) Unit

    clone :: forall eff. a -> Eff (e :: Enchant | eff) Unit
    pause :: forall eff. a -> Eff (e :: Enchant | eff) Unit
    play :: forall eff. a -> Eff (e :: Enchant | eff) Unit
    playWithDup :: forall eff. a -> Boolean -> Eff (e :: Enchant | eff) Unit
    stop :: forall eff. a -> Eff (e :: Enchant | eff) Unit


instance webAudioSoundSelf :: WebAudioSound EnchantWebAudioSound where
    getCurrentTime = ffi ["base", ""] "base.currentTime;"
    setCurrentTime = fpi ["base", "time", ""] "base.currentTime = time;"
    getDuration = ffi ["base", ""] "base.duration;"
    setDuration = fpi ["base", "duration", ""] "base.duration = duration;"
    getVolume = ffi ["base", ""] "base.volume;"
    setVolume = fpi ["base", "volume", ""] "base.volume = volume;"

    clone = fpi ["base", ""] "base.clone();"
    pause = fpi ["base", ""] "base.pause();"
    play = fpi ["base", ""] "base.play();"
    playWithDup = fpi ["base", "dup", ""] "base.play(dup);"
    stop = fpi ["base", ""] "base.stop();"


instance eventTargetWebAudioSound :: EventTarget EnchantWebAudioSound where
    addEventListener = fpi ["base", "type", "listener", ""] "base.addEventListener(type, listener);"
    clearEventListener = fpi ["base", "type", ""] "base.clearEventListener(type);"
    dispatchEvent = fpi ["base", "event", ""] "base.dispatchEvent(event);"
    on = fpi ["base", "type", "listener", ""] "base.on(type, listener);"
    removeEventListener = fpi ["base", "type", "listener", ""] "base.removeEventListener(type, listener);"

