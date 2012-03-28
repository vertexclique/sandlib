-----------------------------------------------------------------------------
--
-- Module      :  AI.Planning.Swarm.SandData
-- Copyright   :  2012 (c) Mahmut Bulut
-- License     :  BSD3
--
-- Maintainer  :  Mahmut Bulut
-- Stability   :  unstable
-- Portability :
--
-- |
--
-----------------------------------------------------------------------------

module AI.Planning.Swarm.SandData where

data SandData = AgentName String
              | AgentNum Int
              | AgentPort Int
              | AgentCoor [(Double, Double)]
              | AgentObj [(Int, Int, String)]
              | AgentObjCoor [(Int, Int, String, (Double, Double))]
              -- [Num, Port, Name, (CoorX, CoorY)]
              deriving (Eq, Ord, Show)

getAgentName :: SandData -> Maybe String
getAgentName (AgentName s) = Just s
getAgentName _ = Nothing

getAgentNum :: SandData -> Maybe Int
getAgentNum (AgentNum r) = Just r
getAgentNum _ = Nothing

getAgentPort :: SandData -> Maybe Int
getAgentPort (AgentPort p)
    | p < 65535 = Just p
getAgentPort _ = Nothing
--
getAgentCoor :: SandData -> Maybe [(Double, Double)]
getAgentCoor (AgentCoor c) = Just c
getAgentCoor _ = Nothing

getAgentObj :: SandData -> Maybe [(Int, Int, String)]
getAgentObj (AgentObj j) = Just j
getAgentObj _ = Nothing

getAgentObjCoor :: SandData -> Maybe [(Int, Int, String, (Double, Double))]
getAgentObjCoor (AgentObjCoor x) = Just x
getAgentObjCoor _ = Nothing

