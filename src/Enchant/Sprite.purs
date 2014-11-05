module Enchant.Sprite where

import Control.Monad.Eff
import Enchant.Base
import Enchant.EventTarget (EventTarget)
import Enchant.Node (Node)


newSprite :: forall eff. Number -> Number -> Eff (e :: Enchant | eff) EnchantSprite
newSprite = ffi ["width", "height", ""] "new enchant.Sprite(width, height);"


class Sprite a where
    getFrame :: forall eff. a -> Eff (e :: Enchant | eff) [Number]
    setFrame :: forall eff. a -> [Number] -> Eff (e :: Enchant | eff) Unit
    getImage :: forall eff. a -> Eff (e :: Enchant | eff) [Number]
    setImage :: forall eff. a -> EnchantSurface -> Eff (e :: Enchant | eff) Unit
    getTimeline :: forall eff. a -> Eff (e :: Enchant | eff) EnchantTimeline


instance spriteSelf :: Sprite EnchantSprite where
    getFrame = ffi ["base", ""] "base.frame;"
    setFrame = fpi ["base", "frames", ""] "base.frame = frames;"
    getImage = ffi ["base", ""] "base.image;"
    setImage = fpi ["base", "asset", ""] "base.image = asset;"
    getTimeline = ffi ["base", ""] "base.tl;"


instance nodeSprite :: Node EnchantSprite where
    getAge = ffi ["base", ""] "base.age;"
    setAge = fpi ["base", "age", ""] "base.age = age;"
    getParentNode = ffi ["base", ""] "base.parentNode;"
    getScene = ffi ["base", ""] "base.base;"
    getX = ffi ["base", ""] "base.x;"
    setX = fpi ["base", "x", ""] "base.x = x;"
    getY = ffi ["base", ""] "base.y;"
    setY = fpi ["base", "y", ""] "base.y = y;"

    moveBy = fpi ["base", "x", "y", ""] "base.moveBy(x, y);"
    moveTo = fpi ["base", "x", "y", ""] "base.moveTo(x, y);"


instance eventTargetSprite :: EventTarget EnchantSprite where
    addEventListener = fpi ["base", "type", "listener", ""] "base.addEventListener(type, listener);"
    clearEventListener = fpi ["base", "type", ""] "base.clearEventListener(type);"
    dispatchEvent = fpi ["base", "event", ""] "base.dispatchEvent(event);"
    on = fpi ["base", "type", "listener", ""] "base.on(type, listener);"
    removeEventListener = fpi ["base", "type", "listener", ""] "base.removeEventListener(type, listener);"
