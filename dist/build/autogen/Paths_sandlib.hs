module Paths_sandlib (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName
  ) where

import Data.Version (Version(..))
import System.Environment (getEnv)

version :: Version
version = Version {versionBranch = [0,0,1], versionTags = []}

bindir, libdir, datadir, libexecdir :: FilePath

bindir     = "/home/regularlambda/.cabal/bin"
libdir     = "/home/regularlambda/.cabal/lib/sandlib-0.0.1/ghc-7.0.3"
datadir    = "/home/regularlambda/.cabal/share/sandlib-0.0.1"
libexecdir = "/home/regularlambda/.cabal/libexec"

getBinDir, getLibDir, getDataDir, getLibexecDir :: IO FilePath
getBinDir = catch (getEnv "sandlib_bindir") (\_ -> return bindir)
getLibDir = catch (getEnv "sandlib_libdir") (\_ -> return libdir)
getDataDir = catch (getEnv "sandlib_datadir") (\_ -> return datadir)
getLibexecDir = catch (getEnv "sandlib_libexecdir") (\_ -> return libexecdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
