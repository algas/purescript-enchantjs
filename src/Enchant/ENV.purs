module Enchant.ENV where

import Control.Monad.Eff
import Enchant.Base


browser :: forall eff. Eff (e :: Enchant | eff) String
browser = ffi [""] "enchant.ENV.BROWSER;"

canvasDrawingMethods :: forall eff. Eff (e :: Enchant | eff) [String]
canvasDrawingMethods = ffi [""] "enchant.ENV.CANVAS_DRAWING_METHODS;"

keyBindTable :: forall eff. Eff (e :: Enchant | eff) EnchantKeyBind
keyBindTable = ffi [""] "enchant.ENV.KEY_BIND_TABLE;"

preventDefaultKeyCodes :: forall eff. Eff (e :: Enchant | eff) [Number]
preventDefaultKeyCodes = ffi [""] "enchant.ENV.PREVENT_DEFAULT_KEY_CODES;"

retinaDisplay :: forall eff. Eff (e :: Enchant | eff) Boolean
retinaDisplay = ffi [""] "enchant.ENV.RETINA_DISPLAY;"

soundEnabledOnMobileSafari :: forall eff. Eff (e :: Enchant | eff) Boolean
soundEnabledOnMobileSafari = ffi [""] "enchant.ENV.SOUND_ENABLED_ON_MOBILE_SAFARI;"

touchEnabled :: forall eff. Eff (e :: Enchant | eff) Boolean
touchEnabled = ffi [""] "enchant.ENV.TOUCH_ENABLED;"

useAnimation :: forall eff. Eff (e :: Enchant | eff) Boolean
useAnimation = ffi [""] "enchant.ENV.USE_ANIMATION;"

useDefaultEventTags :: forall eff. Eff (e :: Enchant | eff) [String]
useDefaultEventTags = ffi [""] "enchant.ENV.USE_DEFAULT_EVENT_TAGS;"

useFlashSound :: forall eff. Eff (e :: Enchant | eff) Boolean
useFlashSound = ffi [""] "enchant.ENV.USE_FLASH_SOUND;"

useTouchToStartScene :: forall eff. Eff (e :: Enchant | eff) Boolean
useTouchToStartScene = ffi [""] "enchant.ENV.USE_TOUCH_TO_START_SCENE;"

useWebAudio :: forall eff. Eff (e :: Enchant | eff) Boolean
useWebAudio = ffi [""] "enchant.ENV.USE_WEBAUDIO;"

vendorPrefix :: forall eff. Eff (e :: Enchant | eff) String
vendorPrefix = ffi [""] "enchant.ENV.VENDOR_PREFIX;"

version :: forall eff. Eff (e :: Enchant | eff) String
version = ffi [""] "enchant.ENV.VERSION;"
