module Enchant.ENV where

import Control.Monad.Eff
import Enchant.Base


browser :: String
browser = ffi [""] "enchant.ENV.BROWSER;"

canvasDrawingMethods :: [String]
canvasDrawingMethods = ffi [""] "enchant.ENV.CANVAS_DRAWING_METHODS;"

keyBindTable :: EnchantKeyBind
keyBindTable = ffi [""] "enchant.ENV.KEY_BIND_TABLE;"

preventDefaultKeyCodes :: [Number]
preventDefaultKeyCodes = ffi [""] "enchant.ENV.PREVENT_DEFAULT_KEY_CODES;"

retinaDisplay :: Boolean
retinaDisplay = ffi [""] "enchant.ENV.RETINA_DISPLAY;"

soundEnabledOnMobileSafari :: Boolean
soundEnabledOnMobileSafari = ffi [""] "enchant.ENV.SOUND_ENABLED_ON_MOBILE_SAFARI;"

touchEnabled :: Boolean
touchEnabled = ffi [""] "enchant.ENV.TOUCH_ENABLED;"

useAnimation :: Boolean
useAnimation = ffi [""] "enchant.ENV.USE_ANIMATION;"

useDefaultEventTags :: [String]
useDefaultEventTags = ffi [""] "enchant.ENV.USE_DEFAULT_EVENT_TAGS;"

useFlashSound :: Boolean
useFlashSound = ffi [""] "enchant.ENV.USE_FLASH_SOUND;"

useTouchToStartScene :: Boolean
useTouchToStartScene = ffi [""] "enchant.ENV.USE_TOUCH_TO_START_SCENE;"

useWebAudio :: Boolean
useWebAudio = ffi [""] "enchant.ENV.USE_WEBAUDIO;"

vendorPrefix :: String
vendorPrefix = ffi [""] "enchant.ENV.VENDOR_PREFIX;"

version :: String
version = ffi [""] "enchant.ENV.VERSION;"
