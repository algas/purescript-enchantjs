module Enchant.KeyboardInputSource where

import Control.Monad.Eff
import Enchant.Base
import Enchant.EventTarget (EventTarget)
import Enchant.InputSource (InputSource)


newKeyboardInputSource :: forall eff. String -> Eff (e :: Enchant | eff) EnchantKeyboardInputSource
newKeyboardInputSource = ffi ["keyCode", ""] "new enchant.KeyboardInputSource(keyCode);"

getKeyCode :: EnchantKeyboardInputManager -> String
getKeyCode = ffi ["keyCode", ""] "base.keyCode;"

setKeyCode :: forall eff. EnchantKeyboardInputManager -> String -> Eff (e :: Enchant | eff) Unit
setKeyCode = fpi ["keyCode", ""] "base.keyCode = keyCode;"

getByKeyCode :: forall eff. EnchantKeyboardInputManager -> Number -> Eff (e :: Enchant | eff) EnchantKeyboardInputSource
getByKeyCode = ffi ["keyCode", ""] "base.getByKeyCode(keyCode);"


instance inputSourceKeyboardInputSource :: InputSource EnchantKeyboardInputSource where
    getIdentifier = ffi ["base", ""] "base.identifier;"
    notifyStateChange = ffi ["base", "data", ""] "base.notifyStateChange(data);"


instance eventTargetKeyboardInputSource :: EventTarget EnchantKeyboardInputSource where
    addEventListener = fpi ["base", "type", "listener", ""] "base.addEventListener(type, listener);"
    clearEventListener = fpi ["base", "type", ""] "base.clearEventListener(type);"
    dispatchEvent = fpi ["base", "event", ""] "base.dispatchEvent(event);"
    on = fpi ["base", "type", "listener", ""] "base.on(type, listener);"
    removeEventListener = fpi ["base", "type", "listener", ""] "base.removeEventListener(type, listener);"
