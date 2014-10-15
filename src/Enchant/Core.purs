module Enchant.Core where

import Control.Monad.Eff
import Enchant.Base
import Enchant.EventTarget


newCore :: forall eff. Number -> Number -> Eff (e :: Enchant | eff) EnchantCore
newCore = ffi ["width", "height", ""] "new enchant.Core(width, height);"

getInstance :: forall eff. Eff (e :: Enchant | eff) EnchantCore
getInstance = ffi [""] "enchant.Core.instance;"

getCurrentScene :: forall eff. EnchantCore -> Eff (e :: Enchant | eff) EnchantScene
getCurrentScene = ffi ["core", ""] "core.currentScene;"

getLoadingScene :: forall eff. EnchantCore -> Eff (e :: Enchant | eff) EnchantScene
getLoadingScene = ffi ["core", ""] "core.loadingScene;"

getRootScene :: forall eff. EnchantCore -> Eff (e :: Enchant | eff) EnchantScene
getRootScene = ffi ["core", ""] "core.rootScene;"

getAsset :: forall eff. EnchantCore -> String -> Eff (e :: Enchant | eff) EnchantSurface
getAsset = ffi ["core", "sprite", ""] "core.assets[sprite];"

getFps :: forall eff. EnchantCore -> Eff (e :: Enchant | eff) Number
getFps = ffi ["core", ""] "core.fps;"

setFps :: forall eff. EnchantCore -> Number -> Eff (e :: Enchant | eff) Unit
setFps = fpi ["core", "n", ""] "core.fps = n;"

getFrame :: forall eff. EnchantCore -> Eff (e :: Enchant | eff) Number
getFrame = ffi ["core", ""] "core.frame;"

setFrame :: forall eff. EnchantCore -> Number -> Eff (e :: Enchant | eff) Unit
setFrame = fpi ["core", "n", ""] "core.frame = n;"

getWidth :: forall eff. EnchantCore -> Eff (e :: Enchant | eff) Number
getWidth = ffi ["core", ""] "core.width;"

setWidth :: forall eff. EnchantCore -> Number -> Eff (e :: Enchant | eff) Unit
setWidth = fpi ["core", "n", ""] "core.width = n;"

getHeight :: forall eff. EnchantCore -> Eff (e :: Enchant | eff) Number
getHeight = ffi ["core", ""] "core.height;"

setHeight :: forall eff. EnchantCore -> Number -> Eff (e :: Enchant | eff) Unit
setHeight = fpi ["core", "n", ""] "core.height = n;"

getScale :: forall eff. EnchantCore -> Eff (e :: Enchant | eff) Number
getScale = ffi ["core", ""] "core.scale;"

setScale :: forall eff. EnchantCore -> Number -> Eff (e :: Enchant | eff) Unit
setScale = fpi ["core", "n", ""] "core.scale = n;"

getReady :: forall eff. EnchantCore -> Eff (e :: Enchant | eff) Boolean
getReady = ffi ["core", ""] "core.ready;"

getRunning :: forall eff. EnchantCore -> Eff (e :: Enchant | eff) Boolean
getRunning = ffi ["core", ""] "core.running;"


debug :: forall eff. EnchantCore -> Eff (e :: Enchant | eff) Unit
debug = fpi ["core", ""] "core.debug();"

getElapsedTime :: forall eff. EnchantCore -> Eff (e :: Enchant | eff) Number
getElapsedTime = ffi ["core", ""] "core.getElapsedTime();"

keybind :: forall eff. EnchantCore -> Number -> String -> Eff (e :: Enchant | eff) Unit
keybind = fpi ["core", "key", "button", ""] "core.keybind(key, button);"

keyunbind :: forall eff. EnchantCore -> Number -> Eff (e :: Enchant | eff) Unit
keyunbind = fpi ["core", "key", ""] "core.keyunbind(key);"

pause :: forall eff. EnchantCore -> Eff (e :: Enchant | eff) Unit
pause = fpi ["core", ""] "core.pause();"

popScene :: forall eff. EnchantCore -> Eff (e :: Enchant | eff) EnchantScene
popScene = ffi ["core", ""] "core.popScene();"

preload :: forall eff. EnchantCore -> String -> Eff (e :: Enchant | eff) Unit
preload = fpi ["core", "image", ""] "core.preload(image);"

pushScene :: forall eff. EnchantCore -> EnchantScene -> Eff (e :: Enchant | eff) EnchantScene
pushScene = ffi ["core", "scene", ""] "core.pushScene(scene);"

removeScene :: forall eff. EnchantCore -> EnchantScene -> Eff (e :: Enchant | eff) EnchantScene
removeScene = ffi ["core", "scene", ""] "core.removeScene(scene);"

replaceScene :: forall eff. EnchantCore -> EnchantScene -> Eff (e :: Enchant | eff) EnchantScene
replaceScene = ffi ["core", "scene", ""] "core.replaceScene(scene);"

resume :: forall eff. EnchantCore -> Eff (e :: Enchant | eff) Unit
resume = fpi ["core", ""] "core.resume();"

start :: forall eff. EnchantCore -> Eff (e :: Enchant | eff) EnchantDeferred
start = fpi ["core", ""] "core.start();"

stop :: forall eff. EnchantCore -> Eff (e :: Enchant | eff) Unit
stop = fpi ["core", ""] "core.stop();"

onload :: forall eff. EnchantCore -> Eff (e :: Enchant | eff) Unit -> Eff (e :: Enchant | eff) Unit
onload = fpi ["core", "func", ""] "core.onload = func;"


instance eventTargetCore :: EventTarget EnchantCore where
    addEventListener = fpi ["base", "type", "listener", ""] "base.addEventListener(type, listener);"
    clearEventListener = fpi ["base", "type", ""] "base.clearEventListener(type);"
    dispatchEvent = fpi ["base", "event", ""] "base.dispatchEvent(event);"
    on = fpi ["base", "type", "listener", ""] "base.on(type, listener);"
    removeEventListener = fpi ["base", "type", "listener", ""] "base.removeEventListener(type, listener);"

