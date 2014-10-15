module Main where


import qualified Enchant.Core as Core
import qualified Enchant.Group as Group
import qualified Enchant.Scene as Scene
import qualified Enchant.Sprite as Sprite
import qualified Enchant.Timeline as Timeline


main = do
    game <- Core.newCore 320 320
    Core.preload game "chara1.png"
    Core.setFps game 20
    Core.onload game do
        bear <- Sprite.newSprite 32 32
        asset <- Core.getAsset game "chara1.png"
        Sprite.setImage bear asset
        rootScene <- Core.getRootScene game
        Group.addChild rootScene bear
        tl <- Sprite.getTimeline bear
        Sprite.setFrame bear [6, 6, 7, 7]
        Timeline.moveBy tl 288 0 90
        Timeline.scaleTo tl (-1) 1 10
        Timeline.moveBy tl (-288) 0 90
        Timeline.scaleTo tl 1 1 10
        Timeline.loop tl
        return unit
    Core.start game
    return unit
