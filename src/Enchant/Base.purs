module Enchant.Base where

import Data.Foreign.EasyFFI

ffi = unsafeForeignFunction
fpi = unsafeForeignProcedure

foreign import data Enchant :: !

foreign import data EnchantAction :: *

foreign import data EnchantActionEventTarget :: *

foreign import data EnchantAsset :: *

foreign import data EnchantBinaryInputManager :: *

foreign import data EnchantBinaryInputSource :: *

foreign import data EnchantCanvasContext :: *

foreign import data EnchantCanvasLayer :: *

foreign import data EnchantCanvasScene :: *

foreign import data EnchantClass :: *

foreign import data EnchantClassDefinition :: *

foreign import data EnchantCore :: *

foreign import data EnchantData :: *

foreign import data EnchantDeferred :: *

foreign import data EnchantDeferredArg :: *

foreign import data EnchantDom :: *

foreign import data EnchantDOMScene :: *

foreign import data EnchantDOMSound :: *

foreign import data EnchantEntity :: *

foreign import data EnchantENV :: *

foreign import data EnchantEvent :: *

foreign import data EnchantEventTarget :: *

foreign import data EnchantGroup :: *

foreign import data EnchantInput :: *

foreign import data EnchantInputManager :: *

foreign import data EnchantInputSource :: *

foreign import data EnchantKeyBind :: *

foreign import data EnchantKeyboardInputManager :: *

foreign import data EnchantKeyboardInputSource :: *

foreign import data EnchantLabel :: *

foreign import data EnchantLoadingScene :: *

foreign import data EnchantMap :: *

foreign import data EnchantNode :: *

foreign import data EnchantParallelAction :: *

foreign import data EnchantParam :: *

foreign import data EnchantScene :: *

foreign import data EnchantSource :: *

foreign import data EnchantSprite :: *

foreign import data EnchantSurface :: *

foreign import data EnchantTileData :: *

foreign import data EnchantTimeline :: *

foreign import data EnchantTween :: *

foreign import data EnchantValueStore :: *

foreign import data EnchantWebAudioSound :: *
