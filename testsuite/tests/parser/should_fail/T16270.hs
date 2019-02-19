{-# LANGUAGE NoTraditionalRecordSyntax, NoDoAndIfThenElse, NoMultiWayIf #-}
{-# OPTIONS -Werror=missing-space-after-bang #-}

module T16270 where

c = do
	if c then
		False
	else
		True

f = id do { 1 }
g = id \x -> x

data Num a => D a

data Pair a b = Pair { fst :: a, snd :: b }
t = p { fst = 1, snd = True }

z :: forall a. ()
z = if True; then (); else ();

data G a where

multiWayIf !i = (a, b)
  where
    a = if | i -> True
           | otherwise -> False
    b = if | i -> False
           | otherwise -> True

-- a fatal error.
k = let

-- not reported, as the previous one was fatal.
k = let
