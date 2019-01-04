module TcUnify where

import GhcPrelude
import TcType      ( TcTauType )
import TcRnTypes   ( TcM, CtOrigin )
import TcEvidence  ( TcCoercion )
import HsExpr      ( HsExpr )
import HsTypes     ( HsType, Mult )
import HsExtension ( GhcRn )

-- This boot file exists only to tie the knot between
--              TcUnify and Inst

unifyType :: Maybe (HsExpr GhcRn) -> TcTauType -> TcTauType -> TcM TcCoercion
unifyKind :: Maybe (HsType GhcRn) -> TcTauType -> TcTauType -> TcM TcCoercion

tcSubMult :: CtOrigin -> Mult -> Mult -> TcM ()
