module Enchant.Surface where

import Control.Monad.Eff
import Enchant.Base
import Enchant.EventTarget
import Data.Maybe


newSurface :: forall eff. Number -> Number -> Eff (e :: Enchant | eff) EnchantSurface
newSurface = ffi ["width", "height", ""] "new enchant.Surface(width, height);"

load :: forall eff. String -> Unit -> (Maybe Unit) -> Eff (e :: Enchant | eff) EnchantSurface
load = ffi ["src", "callback", "onerror", ""] "new enchant.Surface.load(src, callback, onerror);"


class Surface a where
    -- getContext :: forall eff. a -> Eff (e :: Enchant | eff) EnchantCanvasContext
    -- setContext :: forall eff. a -> EnchantCanvasContext -> Eff (e :: Enchant | eff) Unit
    getWidth :: a -> Number
    setWidth :: forall eff. a -> Number -> Eff (e :: Enchant | eff) Unit
    getHeight :: a -> Number
    setHeight :: forall eff. a -> Number -> Eff (e :: Enchant | eff) Unit

    clear :: forall eff. a -> Eff (e :: Enchant | eff) Unit
    clone :: a -> a
    draw :: forall eff. a -> a -> Eff (e :: Enchant | eff) Unit
    getPixel :: a -> [Number]
    setPixel :: forall eff. a -> Number -> Number -> Number -> Number -> Number -> Number -> Eff (e :: Enchant | eff) Unit
    toDataURL :: a -> String


instance surfaceSelf :: Surface EnchantSurface where
    getWidth = ffi ["base", ""] "base.width;"
    setWidth = fpi ["base", "w"] "base.width = w;"
    getHeight = ffi ["base", ""] "base.height;"
    setHeight = fpi ["base", "h"] "base.height = h;"

    clear = fpi ["base", ""] "base.clear();"
    clone = ffi ["base", ""] "base.clone();"
    draw = fpi ["base", "image"] "base.draw(image);"
    getPixel = ffi ["base", ""] "base.getPixel();"
    setPixel = fpi ["base", "x", "y", "r", "g", "b", "a", ""] "base.setPixel(x, y, r, g, b, a);"
    toDataURL = ffi ["base", ""] "base.toDataURL();"
