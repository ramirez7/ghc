module TyCoRep where

import GhcPrelude

import Outputable ( Outputable )
import Data.Data  ( Data )
import {-# SOURCE #-} Var( Var, ArgFlag, AnonArgFlag )

data Type
data TyThing
data Coercion
data UnivCoProvenance
data TyLit
data TyCoBinder
data MCoercion

type PredType = Type
type Kind = Type
type ThetaType = [PredType]
type CoercionN = Coercion
type MCoercionN = MCoercion

mkFunTyOm :: AnonArgFlag -> Type -> Type -> Type
mkForAllTy :: Var -> ArgFlag -> Type -> Type

isRuntimeRepTy :: Type -> Bool
isMultiplicityTy :: Type -> Bool

instance Data Type  -- To support Data instances in CoAxiom
instance Outputable Type
