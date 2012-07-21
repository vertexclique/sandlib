-----------------------------------------------------------------------------
--
-- Module      :  AI.Planning.Swarm.SandClass
-- Copyright   :  2012 (c) Mahmut Bulut
-- License     :  BSD3
--
-- Maintainer  :  Mahmut Bulut <mahmutbulut0@gmail.com>
-- Stability   :  unstable
-- Portability :
--
-- |
--
-----------------------------------------------------------------------------

module AI.Planning.Swarm.SandClass (
    Sand
) where

import AI.Planning.Swarm.SandData

-- Burada ne yazdim ben? Anlamadim
type SandError = String

class Sand a where
    toSandData :: a -> SandData
    fromSandData :: SandData -> Either SandError a

instance Sand SandData where
    toSandData = id
    fromSandData = Right

