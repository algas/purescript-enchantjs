module Enchant.Entity where

import Control.Monad.Eff
import Enchant.Base


newEntity :: forall eff. Eff (e :: Enchant | eff) EnchantEntity
newEntity = ffi [""] "new enchant.Entity();"


class Entity a where
    getBackgroundColor :: a -> String
    setBackgroundColor :: forall eff. a -> String -> Eff (e :: Enchant | eff) Unit
    getButtonMode :: a -> String
    setButtonMode :: forall eff. a -> String -> Eff (e :: Enchant | eff) Unit
    getButtonPressed :: a -> Boolean
    setButtonPressed :: forall eff. a -> Boolean -> Eff (e :: Enchant | eff) Unit
    getCompositeOperation :: a -> String
    setCompositeOperation :: forall eff. a -> String -> Eff (e :: Enchant | eff) Unit
    getDebugColor :: a -> String
    setDebugColor :: forall eff. a -> String -> Eff (e :: Enchant | eff) Unit
    getHeight :: a -> Number
    setHeight :: forall eff. a -> Number -> Eff (e :: Enchant | eff) Unit
    getOpacity :: a -> Number
    setOpacity :: forall eff. a -> Number -> Eff (e :: Enchant | eff) Unit
    getOriginX :: a -> Number
    setOriginX :: forall eff. a -> Number -> Eff (e :: Enchant | eff) Unit
    getOriginY :: a -> Number
    setOriginY :: forall eff. a -> Number -> Eff (e :: Enchant | eff) Unit
    getRotation :: a -> Number
    setRotation :: forall eff. a -> Number -> Eff (e :: Enchant | eff) Unit
    getScaleX :: a -> Number
    setScaleX :: forall eff. a -> Number -> Eff (e :: Enchant | eff) Unit
    getScaleY :: a -> Number
    setScaleY :: forall eff. a -> Number -> Eff (e :: Enchant | eff) Unit
    getTouchEnabled :: a -> Boolean
    setTouchEnabled :: forall eff. a -> Boolean -> Eff (e :: Enchant | eff) Unit
    getVisible :: a -> Boolean
    setVisible :: forall eff. a -> Boolean -> Eff (e :: Enchant | eff) Unit
    getWidth :: a -> Number
    setWidth :: forall eff. a -> Number -> Eff (e :: Enchant | eff) Unit

    disableCollection :: forall eff. a -> Eff (e :: Enchant | eff) Unit
    enableCollection :: forall eff. a -> Eff (e :: Enchant | eff) Unit
    intersect :: a -> a -> Boolean
    rotate :: forall eff. a -> Number -> Eff (e :: Enchant | eff) Unit
    scale :: forall eff. a -> Number -> Number -> Eff (e :: Enchant | eff) Unit
    within :: a -> a -> Number -> Boolean


instance entitySelf :: Entity EnchantEntity where
    getBackgroundColor = ffi ["base", ""] "base.backgroundColor;"
    setBackgroundColor = fpi ["base", "backgroundColor", ""] "base.backgroundColor = backgroundColor;"
    getButtonMode = ffi ["base", ""] "base.buttonMode;"
    setButtonMode = fpi ["base", "buttonMode", ""] "base.buttonMode = buttonMode;"
    getButtonPressed = ffi ["base", ""] "base.buttonPressed;"
    setButtonPressed = fpi ["base", "buttonPressed", ""] "base.buttonPressed = buttonPressed;"
    getCompositeOperation = ffi ["base", ""] "base.compositeOperation;"
    setCompositeOperation = fpi ["base", "compositeOperation", ""] "base.compositeOperation = compositeOperation;"
    getDebugColor = ffi ["base", ""] "base.debugColor;"
    setDebugColor = fpi ["base", "debugColor", ""] "base.debugColor = debugColor;"
    getHeight = ffi ["base", ""] "base.height;"
    setHeight = fpi ["base", "height", ""] "base.height = height;"
    getOpacity = ffi ["base", ""] "base.opacity;"
    setOpacity = fpi ["base", "opacity", ""] "base.opacity = opacity;"
    getOriginX = ffi ["base", ""] "base.originX;"
    setOriginX = fpi ["base", "originX", ""] "base.originX = originX;"
    getOriginY = ffi ["base", ""] "base.originY;"
    setOriginY = fpi ["base", "originY", ""] "base.originY = originY;"
    getRotation = ffi ["base", ""] "base.rotation;"
    setRotation = fpi ["base", "rotation", ""] "base.rotation = rotation;"
    getScaleX = ffi ["base", ""] "base.scaleX;"
    setScaleX = fpi ["base", "scaleX", ""] "base.scaleX = scaleX;"
    getScaleY = ffi ["base", ""] "base.scaleY;"
    setScaleY = fpi ["base", "scaleY", ""] "base.scaleY = scaleY;"
    getTouchEnabled = ffi ["base", ""] "base.touchEnabled;"
    setTouchEnabled = fpi ["base", "touchEnabled", ""] "base.touchEnabled = touchEnabled;"
    getVisible = ffi ["base", ""] "base.visible;"
    setVisible = fpi ["base", "visible", ""] "base.visible = visible;"
    getWidth = ffi ["base", ""] "base.width;"
    setWidth = fpi ["base", "width", ""] "base.width = width;"

    disableCollection = fpi ["base", ""] "base.disableCollection();"
    enableCollection = fpi ["base", ""] "base.disableCollection();"
    intersect = ffi ["base", "other", ""] "base.intersect(other);"
    rotate = fpi ["base", "deg", ""] "base.rotate(deg);"
    scale = fpi ["base", "x", "y", ""] "base.scale(x, y);"
    within = ffi ["base", "other", ""] "base.within(other);"
