{-# LANGUAGE GADTs, KindSignatures, PolyKinds, TypeFamilies, RankNTypes #-}
module Singlethongs.Internal
 ( Sing
 , SingI(sing)
 , SomeSing(SomeSing)
 , withSomeSing
 , SingKind(Demote, fromSing, toSing)
 ) where

import Data.Kind (Type)

data family Sing (a :: k)

class SingI (a :: k) where
  sing :: Sing a

data SomeSing k where
  SomeSing :: Sing (a :: k) -> SomeSing k

withSomeSing :: SingKind k => Demote k -> (forall (a :: k). Sing a -> r) -> r
withSomeSing x f = case toSing x of SomeSing x' -> f x'
{-# INLINE withSomeSing #-}

class SingKind k where
  type Demote k :: Type
  fromSing :: Sing (a :: k) -> Demote k
  toSing :: Demote k -> SomeSing k
