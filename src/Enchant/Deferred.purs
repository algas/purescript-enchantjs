module Enchant.Deferred where

import Control.Monad.Eff
import Enchant.Base
import Enchant.EventTarget


newDeferred :: forall eff. Eff (e :: Enchant | eff) EnchantDeferred
newDeferred = ffi [""] "new enchant.Deferred();"


nextStatic :: forall eff. Unit -> Eff (e :: Enchant | eff) EnchantDeferred
nextStatic = ffi ["func", ""] "new enchant.Deferred.next(func);"

parallel :: forall eff. EnchantDeferredArg -> Eff (e :: Enchant | eff) EnchantDeferred
parallel = ffi ["arg", ""] "new enchant.Deferred.parallel(arg);"


class Deferred a where
    call :: forall eff. a -> EnchantDeferredArg -> Eff (e :: Enchant | eff) EnchantDeferred
    error :: forall eff. a -> Unit -> Eff (e :: Enchant | eff) EnchantDeferred
    fail :: forall eff. a -> EnchantDeferredArg -> Eff (e :: Enchant | eff) EnchantDeferred
    next :: forall eff. a -> Unit -> Eff (e :: Enchant | eff) EnchantDeferred


instance deferredSelf :: Deferred EnchantDeferred where
    call = ffi ["base", "arg", ""] "base.call(arg);"
    error = ffi ["base", "func", ""] "base.error(func);"
    fail = ffi ["base", "arg", ""] "base.fail(arg);"
    next = ffi ["base", "func", ""] "base.next(func);"
